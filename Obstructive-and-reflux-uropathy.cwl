cwlVersion: v1.0
steps:
  read-potential-cases-disc:
    run: read-potential-cases-disc.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
      potentialCases:
        id: potentialCases
        source: potentialCases
  pelviureteric-obstructive-and-reflux-uropathy---primary:
    run: pelviureteric-obstructive-and-reflux-uropathy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-disc/output
  other-obstructive-and-reflux-uropathy---primary:
    run: other-obstructive-and-reflux-uropathy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: pelviureteric-obstructive-and-reflux-uropathy---primary/output
  obstructive-and-reflux-uropathy-hydroureter---primary:
    run: obstructive-and-reflux-uropathy-hydroureter---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: other-obstructive-and-reflux-uropathy---primary/output
  obstructive-and-reflux-uropathy-unspecified---primary:
    run: obstructive-and-reflux-uropathy-unspecified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: obstructive-and-reflux-uropathy-hydroureter---primary/output
  ureteropelvic-obstructive-and-reflux-uropathy---primary:
    run: ureteropelvic-obstructive-and-reflux-uropathy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: obstructive-and-reflux-uropathy-unspecified---primary/output
  ureteric-obstructive-and-reflux-uropathy---primary:
    run: ureteric-obstructive-and-reflux-uropathy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: ureteropelvic-obstructive-and-reflux-uropathy---primary/output
  obstructive-and-reflux-uropathy-hydronephrosis---primary:
    run: obstructive-and-reflux-uropathy-hydronephrosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: ureteric-obstructive-and-reflux-uropathy---primary/output
  obstructive-and-reflux-uropathy-ureter---primary:
    run: obstructive-and-reflux-uropathy-ureter---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: obstructive-and-reflux-uropathy-hydronephrosis---primary/output
  calculous-obstructive-and-reflux-uropathy---primary:
    run: calculous-obstructive-and-reflux-uropathy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: obstructive-and-reflux-uropathy-ureter---primary/output
  obstructive-and-reflux-uropathy---primary:
    run: obstructive-and-reflux-uropathy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: calculous-obstructive-and-reflux-uropathy---primary/output
  obstructive-and-reflux-uropathy-hydrocalycosis---primary:
    run: obstructive-and-reflux-uropathy-hydrocalycosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: obstructive-and-reflux-uropathy---primary/output
  reflux---primary:
    run: reflux---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: obstructive-and-reflux-uropathy-hydrocalycosis---primary/output
  obstructive-and-reflux-uropathy-pyonephrosis---primary:
    run: obstructive-and-reflux-uropathy-pyonephrosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: reflux---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: obstructive-and-reflux-uropathy-pyonephrosis---primary/output
class: Workflow
inputs:
  potentialCases:
    id: potentialCases
    doc: Input of potential cases for processing
    type: File
  inputModule1:
    id: inputModule1
    doc: Python implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
