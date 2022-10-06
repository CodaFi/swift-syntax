//===--- LexerDiagnosticMessages.swift ------------------------------------===//
//
// This source file is part of the Swift.org open source project
//
// Copyright (c) 2014 - 2022 Apple Inc. and the Swift project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See https://swift.org/LICENSE.txt for license information
// See https://swift.org/CONTRIBUTORS.txt for the list of Swift project authors
//
//===----------------------------------------------------------------------===//

import SwiftDiagnostics
@_spi(RawSyntax) import SwiftSyntax

fileprivate let diagnosticDomain: String = "SwiftLexer"

/// A error diagnostic whose ID is determined by the diagnostic's type.
public protocol LexerError: DiagnosticMessage {
  var diagnosticID: MessageID { get }
}

public extension LexerError {
  static var diagnosticID: MessageID {
    return MessageID(domain: diagnosticDomain, id: "\(self)")
  }

  var diagnosticID: MessageID {
    return Self.diagnosticID
  }

  var severity: DiagnosticSeverity {
    return .error
  }
}

public protocol LexerNote: NoteMessage {
  var fixItID: MessageID { get }
}

public extension LexerNote {
  static var fixItID: MessageID {
    return MessageID(domain: diagnosticDomain, id: "\(self)")
  }

  var fixItID: MessageID {
    return Self.fixItID
  }
}

public protocol LexerFixIt: FixItMessage {
  var fixItID: MessageID { get }
}

public extension LexerFixIt {
  static var fixItID: MessageID {
    return MessageID(domain: diagnosticDomain, id: "\(self)")
  }

  var fixItID: MessageID {
    return Self.fixItID
  }
}

// MARK: - Errors (please sort alphabetically)

/// Please order the cases in this enum alphabetically by case name.
public enum StaticLexerError: String, DiagnosticMessage {
  case lex_expected_binary_exponent_in_hex_float_literal = "hexadecimal floating point literal must end with an exponent"
  case lex_expected_digit_in_fp_exponent = "expected a digit in floating point exponent"
  case lex_unexpected_block_comment_end = "unexpected end of block comment"
  case lex_unterminated_string_literal = "unterminated string literal"
  case lex_unicode_escape_braces = "expected hexadecimal code in braces after unicode escape"
  case lex_invalid_escape = "invalid escape sequence in literal"
  case lex_invalid_utf8 = "invalid UTF-8 found in source file"
  case lex_invalid_u_escape = "\\u{...} escape sequence expects between 1 and 8 hex digits"
  case lex_invalid_u_escape_rbrace = "expected '}' in \\u{...} escape sequence"
  case lex_invalid_curly_quote = "unicode curly quote found, replace with '\"'"
  case expected_member_name = "expected member name following '.'"
  case extra_whitespace_period = "extraneous whitespace after '.' is not permitted"
  case lex_conflict_marker_in_file = "source control conflict marker in source file"
  case lex_unprintable_ascii_character = "unprintable ASCII character found in source file"
  case lex_nul_character = "nul character embedded in middle of file"
  case lex_invalid_identifier_start_character = "an identifier cannot begin with this character"
  case lex_nonbreaking_space = "non-breaking space (U+00A0) used instead of regular space"
  case lex_invalid_character = "invalid character in source file"
  case lex_illegal_multiline_string_start = "multi-line string literal content must begin on a new line"

  public var message: String { self.rawValue }

  public var diagnosticID: MessageID {
    MessageID(domain: diagnosticDomain, id: "\(type(of: self)).\(self)")
  }

  public var severity: DiagnosticSeverity { .error }
}

public struct InvalidFloatingPointExponentDigit: LexerError {
  public enum Kind {
    case digit(Unicode.Scalar)
    case character(Unicode.Scalar)
  }
  public let kind: Self.Kind

  public var message: String {
    switch self.kind {
    case .digit(let digit):
      return "'\(digit)' is not a valid digit in floating point exponent"
    case .character(let char):
      return "'\(char)' is not a valid first character in floating point exponent"
    }
  }
}

public struct InvalidDigitInIntegerliteral: LexerError {
  public enum Kind {
    case binary(Unicode.Scalar)
    case octal(Unicode.Scalar)
    case decimal(Unicode.Scalar)
    case hex(Unicode.Scalar)
  }

  public let kind: Self.Kind

  public var message: String {
    switch self.kind {
    case .binary(let digit):
      return "'\(digit)' is not a valid binary digit (0 or 1) in integer literal"
    case .octal(let digit):
      return "'\(digit)' is not a valid octal digit (0-7) in integer literal"
    case .decimal(let digit):
      return "'\(digit)' is not a valid digit in integer literal"
    case .hex(let digit):
      return "'\(digit)' is not a valid hexadecimal digit (0-9, A-F) in integer literal"
    }
  }
}
