//// Automatically Generated From SyntaxNodes.swift.gyb.
//// Do Not Edit Directly!
//===------------ SyntaxNodes.swift - Syntax Node definitions -------------===//
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


// MARK: - UnknownSILSyntax

public struct UnknownSILSyntax: SILSyntaxProtocol, SyntaxHashable {
  public let _syntaxNode: Syntax

  /// Converts the given `Syntax` node to a `UnknownSILSyntax` if possible. Returns
  /// `nil` if the conversion is not possible.
  public init?(_ syntax: Syntax) {
    guard syntax.raw.kind == .unknownSIL else { return nil }
    self._syntaxNode = syntax
  }

  /// Creates a `UnknownSILSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    assert(data.raw.kind == .unknownSIL)
    self._syntaxNode = Syntax(data)
  }

  public init(
  ) {
    let layout: [RawSyntax?] = [
    ]
    let raw = RawSyntax.makeLayout(kind: SyntaxKind.unknownSIL,
      from: layout, arena: .default)
    let data = SyntaxData.forRoot(raw)
    self.init(data)
  }
}

extension UnknownSILSyntax: CustomReflectable {
  public var customMirror: Mirror {
    return Mirror(self, children: [
    ])
  }
}

// MARK: - MissingSILSyntax

public struct MissingSILSyntax: SILSyntaxProtocol, SyntaxHashable {
  public let _syntaxNode: Syntax

  /// Converts the given `Syntax` node to a `MissingSILSyntax` if possible. Returns
  /// `nil` if the conversion is not possible.
  public init?(_ syntax: Syntax) {
    guard syntax.raw.kind == .missingSIL else { return nil }
    self._syntaxNode = syntax
  }

  /// Creates a `MissingSILSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    assert(data.raw.kind == .missingSIL)
    self._syntaxNode = Syntax(data)
  }

  public init(
  ) {
    let layout: [RawSyntax?] = [
    ]
    let raw = RawSyntax.makeLayout(kind: SyntaxKind.missingSIL,
      from: layout, arena: .default)
    let data = SyntaxData.forRoot(raw)
    self.init(data)
  }
}

extension MissingSILSyntax: CustomReflectable {
  public var customMirror: Mirror {
    return Mirror(self, children: [
    ])
  }
}

// MARK: - SILStageSyntax

public struct SILStageSyntax: SILSyntaxProtocol, SyntaxHashable {
  public let _syntaxNode: Syntax

  /// Converts the given `Syntax` node to a `SILStageSyntax` if possible. Returns
  /// `nil` if the conversion is not possible.
  public init?(_ syntax: Syntax) {
    guard syntax.raw.kind == .silStage else { return nil }
    self._syntaxNode = syntax
  }

  /// Creates a `SILStageSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    assert(data.raw.kind == .silStage)
    self._syntaxNode = Syntax(data)
  }

  public init(
    _ unexpectedBeforeStageToken: UnexpectedNodesSyntax? = nil,
    stageToken: TokenSyntax,
    _ unexpectedBetweenStageTokenAndStageName: UnexpectedNodesSyntax? = nil,
    stageName: TokenSyntax
  ) {
    let layout: [RawSyntax?] = [
      unexpectedBeforeStageToken?.raw,
      stageToken.raw,
      unexpectedBetweenStageTokenAndStageName?.raw,
      stageName.raw,
    ]
    let raw = RawSyntax.makeLayout(kind: SyntaxKind.silStage,
      from: layout, arena: .default)
    let data = SyntaxData.forRoot(raw)
    self.init(data)
  }

  public var unexpectedBeforeStageToken: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 0, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      self = withUnexpectedBeforeStageToken(value)
    }
  }

  /// Returns a copy of the receiver with its `unexpectedBeforeStageToken` replaced.
  /// - param newChild: The new `unexpectedBeforeStageToken` to replace the node's
  ///                   current `unexpectedBeforeStageToken`, if present.
  public func withUnexpectedBeforeStageToken(
    _ newChild: UnexpectedNodesSyntax?) -> SILStageSyntax {
    let raw = newChild?.raw
    let newData = data.replacingChild(raw, at: 0)
    return SILStageSyntax(newData)
  }

  public var stageToken: TokenSyntax {
    get {
      let childData = data.child(at: 1, parent: Syntax(self))
      return TokenSyntax(childData!)
    }
    set(value) {
      self = withStageToken(value)
    }
  }

  /// Returns a copy of the receiver with its `stageToken` replaced.
  /// - param newChild: The new `stageToken` to replace the node's
  ///                   current `stageToken`, if present.
  public func withStageToken(
    _ newChild: TokenSyntax?) -> SILStageSyntax {
    let raw = newChild?.raw ?? RawSyntax.makeMissingToken(kind: TokenKind.unknown(""), arena: .default)
    let newData = data.replacingChild(raw, at: 1)
    return SILStageSyntax(newData)
  }

  public var unexpectedBetweenStageTokenAndStageName: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 2, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      self = withUnexpectedBetweenStageTokenAndStageName(value)
    }
  }

  /// Returns a copy of the receiver with its `unexpectedBetweenStageTokenAndStageName` replaced.
  /// - param newChild: The new `unexpectedBetweenStageTokenAndStageName` to replace the node's
  ///                   current `unexpectedBetweenStageTokenAndStageName`, if present.
  public func withUnexpectedBetweenStageTokenAndStageName(
    _ newChild: UnexpectedNodesSyntax?) -> SILStageSyntax {
    let raw = newChild?.raw
    let newData = data.replacingChild(raw, at: 2)
    return SILStageSyntax(newData)
  }

  public var stageName: TokenSyntax {
    get {
      let childData = data.child(at: 3, parent: Syntax(self))
      return TokenSyntax(childData!)
    }
    set(value) {
      self = withStageName(value)
    }
  }

  /// Returns a copy of the receiver with its `stageName` replaced.
  /// - param newChild: The new `stageName` to replace the node's
  ///                   current `stageName`, if present.
  public func withStageName(
    _ newChild: TokenSyntax?) -> SILStageSyntax {
    let raw = newChild?.raw ?? RawSyntax.makeMissingToken(kind: TokenKind.identifier(""), arena: .default)
    let newData = data.replacingChild(raw, at: 3)
    return SILStageSyntax(newData)
  }
}

extension SILStageSyntax: CustomReflectable {
  public var customMirror: Mirror {
    return Mirror(self, children: [
      "unexpectedBeforeStageToken": unexpectedBeforeStageToken.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "stageToken": Syntax(stageToken).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenStageTokenAndStageName": unexpectedBetweenStageTokenAndStageName.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "stageName": Syntax(stageName).asProtocol(SyntaxProtocol.self),
    ])
  }
}

