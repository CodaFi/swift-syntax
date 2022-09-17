//// Automatically Generated From SILNodes.swift.gyb.
//// Do Not Edit Directly!
//===----------------------------------------------------------------------===//
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

let SIL_NODES: [Node] = [
  Node(name: "SILStage",
       nameForDiagnostics: "SIL stage",
       kind: "SIL",
       children: [
         Child(name: "StageToken",
               kind: "Token"),
         Child(name: "StageName",
               kind: "IdentifierToken",
               tokenChoices: [
                 "Identifier"
               ])
       ]),

]
