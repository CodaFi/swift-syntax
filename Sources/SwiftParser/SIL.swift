@_spi(RawSyntax) import SwiftSyntax

extension Parser {
  enum SILDeclaration {
    case sil
    case sil_stage
    case sil_property
    case sil_vtable
    case sil_global
    case sil_witness_table
    case sil_default_witness_table
    case sil_differentiability_witness
    case sil_coverage_map
    case sil_scope
  }

  func atStartOfSILDeclaration() -> SILDeclaration? {
    // SIL decls must start on a new line.
    guard self.currentToken.isAtStartOfLine else {
      return nil
    }

    switch self.currentToken.tokenText {
    case "sil": return .sil
    case "sil_stage": return .sil_stage
    case "sil_property": return .sil_property
    case "sil_vtable": return .sil_vtable
    case "sil_global": return .sil_global
    case "sil_witness_table": return .sil_witness_table
    case "sil_default_witness_table": return .sil_default_witness_table
    case "sil_differentiability_witness": return .sil_differentiability_witness
    case "sil_coverage_map": return .sil_coverage_map
    case "sil_scope": return .sil_scope
    default:
      return nil
    }
  }
}

extension Parser {
  mutating func parseSILDeclaration(_ kind: SILDeclaration) -> RawSILSyntax {
    switch kind {
    case .sil:
      fatalError()
    case .sil_stage:
      return RawSILSyntax(self.parseSILStage())
    case .sil_property:
      fatalError()
    case .sil_vtable:
      fatalError()
    case .sil_global:
      fatalError()
    case .sil_witness_table:
      fatalError()
    case .sil_default_witness_table:
      fatalError()
    case .sil_differentiability_witness:
      fatalError()
    case .sil_coverage_map:
      fatalError()
    case .sil_scope:
      fatalError()
    }
  }
}

extension Parser {
  mutating func parseSILStage() -> RawSILStageSyntax {
    let (unexpectedBeforeKeyword, keyword) = self.expectContextualKeyword("sil_stage")
    let (unexpectedBeforeStageName, stageName) = self.expectIdentifier()
    return RawSILStageSyntax(
      unexpectedBeforeKeyword,
      stageToken: keyword,
      unexpectedBeforeStageName,
      stageName: stageName,
      arena: self.arena)
  }


}