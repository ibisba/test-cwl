#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: Workflow
inputs:
  rulesfile: File
  sourcefile: File
  sinkfile: File
  reverse: boolean
  max-steps: int?

outputs:
  compounds:
    type: File
    outputSource: rp2paths/compounds
  reactions:
    type: File
    outputSource: rp2paths/reactions
  sinks:
    type: File
    outputSource: rp2paths/sinks

steps:
  rp2:
    #run: github.com/ibisba/RetroPath2-cwl/tools/RetroPath2.cwl
    in:
      input.rulesfile: rulesfile
      input.sourcefile: sourcefile
      input.sinkfile: sinkfile
      input.max-steps: max-steps
    out: [solutionfile]

  rp2paths:
    #run: github.com/ibisba/rp2paths-cwl/tools/rp2paths.cwl
    in:
      infile: rp2/solutionfile
      reverse: reverse
    out: [compounds, reactions, sinks]


