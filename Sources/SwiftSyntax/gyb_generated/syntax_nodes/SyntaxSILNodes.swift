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

// MARK: - SILGlobalSyntax

public struct SILGlobalSyntax: SILSyntaxProtocol, SyntaxHashable {
  public let _syntaxNode: Syntax

  /// Converts the given `Syntax` node to a `SILGlobalSyntax` if possible. Returns
  /// `nil` if the conversion is not possible.
  public init?(_ syntax: Syntax) {
    guard syntax.raw.kind == .silGlobal else { return nil }
    self._syntaxNode = syntax
  }

  /// Creates a `SILGlobalSyntax` node from the given `SyntaxData`. This assumes
  /// that the `SyntaxData` is of the correct kind. If it is not, the behaviour
  /// is undefined.
  internal init(_ data: SyntaxData) {
    assert(data.raw.kind == .silGlobal)
    self._syntaxNode = Syntax(data)
  }

  public init(
    _ unexpectedBeforeSILGlobalToken: UnexpectedNodesSyntax? = nil,
    silGlobalToken: TokenSyntax,
    _ unexpectedBetweenSILGlobalTokenAndLinkage: UnexpectedNodesSyntax? = nil,
    linkage: TokenSyntax,
    _ unexpectedBetweenLinkageAndIdentifier: UnexpectedNodesSyntax? = nil,
    identifier: TokenSyntax,
    _ unexpectedBetweenIdentifierAndColon: UnexpectedNodesSyntax? = nil,
    colon: TokenSyntax,
    _ unexpectedBetweenColonAndSILType: UnexpectedNodesSyntax? = nil,
    silType: SILTypeSyntax
  ) {
    let layout: [RawSyntax?] = [
      unexpectedBeforeSILGlobalToken?.raw,
      silGlobalToken.raw,
      unexpectedBetweenSILGlobalTokenAndLinkage?.raw,
      linkage.raw,
      unexpectedBetweenLinkageAndIdentifier?.raw,
      identifier.raw,
      unexpectedBetweenIdentifierAndColon?.raw,
      colon.raw,
      unexpectedBetweenColonAndSILType?.raw,
      silType.raw,
    ]
    let raw = RawSyntax.makeLayout(kind: SyntaxKind.silGlobal,
      from: layout, arena: .default)
    let data = SyntaxData.forRoot(raw)
    self.init(data)
  }

  public var unexpectedBeforeSILGlobalToken: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 0, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      self = withUnexpectedBeforeSILGlobalToken(value)
    }
  }

  /// Returns a copy of the receiver with its `unexpectedBeforeSILGlobalToken` replaced.
  /// - param newChild: The new `unexpectedBeforeSILGlobalToken` to replace the node's
  ///                   current `unexpectedBeforeSILGlobalToken`, if present.
  public func withUnexpectedBeforeSILGlobalToken(
    _ newChild: UnexpectedNodesSyntax?) -> SILGlobalSyntax {
    let raw = newChild?.raw
    let newData = data.replacingChild(raw, at: 0)
    return SILGlobalSyntax(newData)
  }

  public var silGlobalToken: TokenSyntax {
    get {
      let childData = data.child(at: 1, parent: Syntax(self))
      return TokenSyntax(childData!)
    }
    set(value) {
      self = withSILGlobalToken(value)
    }
  }

  /// Returns a copy of the receiver with its `silGlobalToken` replaced.
  /// - param newChild: The new `silGlobalToken` to replace the node's
  ///                   current `silGlobalToken`, if present.
  public func withSILGlobalToken(
    _ newChild: TokenSyntax?) -> SILGlobalSyntax {
    let raw = newChild?.raw ?? RawSyntax.makeMissingToken(kind: TokenKind.unknown(""), arena: .default)
    let newData = data.replacingChild(raw, at: 1)
    return SILGlobalSyntax(newData)
  }

  public var unexpectedBetweenSILGlobalTokenAndLinkage: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 2, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      self = withUnexpectedBetweenSILGlobalTokenAndLinkage(value)
    }
  }

  /// Returns a copy of the receiver with its `unexpectedBetweenSILGlobalTokenAndLinkage` replaced.
  /// - param newChild: The new `unexpectedBetweenSILGlobalTokenAndLinkage` to replace the node's
  ///                   current `unexpectedBetweenSILGlobalTokenAndLinkage`, if present.
  public func withUnexpectedBetweenSILGlobalTokenAndLinkage(
    _ newChild: UnexpectedNodesSyntax?) -> SILGlobalSyntax {
    let raw = newChild?.raw
    let newData = data.replacingChild(raw, at: 2)
    return SILGlobalSyntax(newData)
  }

  public var linkage: TokenSyntax {
    get {
      let childData = data.child(at: 3, parent: Syntax(self))
      return TokenSyntax(childData!)
    }
    set(value) {
      self = withLinkage(value)
    }
  }

  /// Returns a copy of the receiver with its `linkage` replaced.
  /// - param newChild: The new `linkage` to replace the node's
  ///                   current `linkage`, if present.
  public func withLinkage(
    _ newChild: TokenSyntax?) -> SILGlobalSyntax {
    let raw = newChild?.raw ?? RawSyntax.makeMissingToken(kind: TokenKind.unknown(""), arena: .default)
    let newData = data.replacingChild(raw, at: 3)
    return SILGlobalSyntax(newData)
  }

  public var unexpectedBetweenLinkageAndIdentifier: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 4, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      self = withUnexpectedBetweenLinkageAndIdentifier(value)
    }
  }

  /// Returns a copy of the receiver with its `unexpectedBetweenLinkageAndIdentifier` replaced.
  /// - param newChild: The new `unexpectedBetweenLinkageAndIdentifier` to replace the node's
  ///                   current `unexpectedBetweenLinkageAndIdentifier`, if present.
  public func withUnexpectedBetweenLinkageAndIdentifier(
    _ newChild: UnexpectedNodesSyntax?) -> SILGlobalSyntax {
    let raw = newChild?.raw
    let newData = data.replacingChild(raw, at: 4)
    return SILGlobalSyntax(newData)
  }

  public var identifier: TokenSyntax {
    get {
      let childData = data.child(at: 5, parent: Syntax(self))
      return TokenSyntax(childData!)
    }
    set(value) {
      self = withIdentifier(value)
    }
  }

  /// Returns a copy of the receiver with its `identifier` replaced.
  /// - param newChild: The new `identifier` to replace the node's
  ///                   current `identifier`, if present.
  public func withIdentifier(
    _ newChild: TokenSyntax?) -> SILGlobalSyntax {
    let raw = newChild?.raw ?? RawSyntax.makeMissingToken(kind: TokenKind.identifier(""), arena: .default)
    let newData = data.replacingChild(raw, at: 5)
    return SILGlobalSyntax(newData)
  }

  public var unexpectedBetweenIdentifierAndColon: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 6, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      self = withUnexpectedBetweenIdentifierAndColon(value)
    }
  }

  /// Returns a copy of the receiver with its `unexpectedBetweenIdentifierAndColon` replaced.
  /// - param newChild: The new `unexpectedBetweenIdentifierAndColon` to replace the node's
  ///                   current `unexpectedBetweenIdentifierAndColon`, if present.
  public func withUnexpectedBetweenIdentifierAndColon(
    _ newChild: UnexpectedNodesSyntax?) -> SILGlobalSyntax {
    let raw = newChild?.raw
    let newData = data.replacingChild(raw, at: 6)
    return SILGlobalSyntax(newData)
  }

  public var colon: TokenSyntax {
    get {
      let childData = data.child(at: 7, parent: Syntax(self))
      return TokenSyntax(childData!)
    }
    set(value) {
      self = withColon(value)
    }
  }

  /// Returns a copy of the receiver with its `colon` replaced.
  /// - param newChild: The new `colon` to replace the node's
  ///                   current `colon`, if present.
  public func withColon(
    _ newChild: TokenSyntax?) -> SILGlobalSyntax {
    let raw = newChild?.raw ?? RawSyntax.makeMissingToken(kind: TokenKind.colon, arena: .default)
    let newData = data.replacingChild(raw, at: 7)
    return SILGlobalSyntax(newData)
  }

  public var unexpectedBetweenColonAndSILType: UnexpectedNodesSyntax? {
    get {
      let childData = data.child(at: 8, parent: Syntax(self))
      if childData == nil { return nil }
      return UnexpectedNodesSyntax(childData!)
    }
    set(value) {
      self = withUnexpectedBetweenColonAndSILType(value)
    }
  }

  /// Returns a copy of the receiver with its `unexpectedBetweenColonAndSILType` replaced.
  /// - param newChild: The new `unexpectedBetweenColonAndSILType` to replace the node's
  ///                   current `unexpectedBetweenColonAndSILType`, if present.
  public func withUnexpectedBetweenColonAndSILType(
    _ newChild: UnexpectedNodesSyntax?) -> SILGlobalSyntax {
    let raw = newChild?.raw
    let newData = data.replacingChild(raw, at: 8)
    return SILGlobalSyntax(newData)
  }

  public var silType: SILTypeSyntax {
    get {
      let childData = data.child(at: 9, parent: Syntax(self))
      return SILTypeSyntax(childData!)
    }
    set(value) {
      self = withSILType(value)
    }
  }

  /// Returns a copy of the receiver with its `silType` replaced.
  /// - param newChild: The new `silType` to replace the node's
  ///                   current `silType`, if present.
  public func withSILType(
    _ newChild: SILTypeSyntax?) -> SILGlobalSyntax {
    let raw = newChild?.raw ?? RawSyntax.makeEmptyLayout(kind: SyntaxKind.silType, arena: .default)
    let newData = data.replacingChild(raw, at: 9)
    return SILGlobalSyntax(newData)
  }
}

extension SILGlobalSyntax: CustomReflectable {
  public var customMirror: Mirror {
    return Mirror(self, children: [
      "unexpectedBeforeSILGlobalToken": unexpectedBeforeSILGlobalToken.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "silGlobalToken": Syntax(silGlobalToken).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenSILGlobalTokenAndLinkage": unexpectedBetweenSILGlobalTokenAndLinkage.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "linkage": Syntax(linkage).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenLinkageAndIdentifier": unexpectedBetweenLinkageAndIdentifier.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "identifier": Syntax(identifier).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenIdentifierAndColon": unexpectedBetweenIdentifierAndColon.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "colon": Syntax(colon).asProtocol(SyntaxProtocol.self),
      "unexpectedBetweenColonAndSILType": unexpectedBetweenColonAndSILType.map(Syntax.init)?.asProtocol(SyntaxProtocol.self) as Any,
      "silType": Syntax(silType).asProtocol(SyntaxProtocol.self),
    ])
  }
}

