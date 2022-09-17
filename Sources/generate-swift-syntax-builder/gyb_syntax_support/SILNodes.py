from .Child import Child
from .Node import Node  # noqa: I201

SIL_NODES = [
    # sil-stage -> 'sil_stage' ('raw' | 'canonical')
    Node('SILStage', name_for_diagnostics='SIL stage', kind='SIL',
         children=[
             Child('StageToken', kind='Token'),
             Child('StageName', kind='IdentifierToken'),
         ]),

#    CASE_SIL(sil, DeclSIL)
#    CASE_SIL(sil_vtable, SILVTable)
#    CASE_SIL(sil_global, SILGlobal)
#    CASE_SIL(sil_witness_table, SILWitnessTable)
#    CASE_SIL(sil_default_witness_table, SILDefaultWitnessTable)
#    CASE_SIL(sil_differentiability_witness, SILDifferentiabilityWitness)
#    CASE_SIL(sil_coverage_map, SILCoverageMap)
#    CASE_SIL(sil_property, SILProperty)
#    CASE_SIL(sil_scope, SILScope)
]
