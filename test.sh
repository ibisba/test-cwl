#!/usr/bin/env bash
set -e

EXPECTED_FILES="compounds.txt efm.err efm.log out_comp out_discarded out_efm out_full_react out_graph1.dot out_graph1.svg out_info out_mat out_paths.csv out_react out_rever reactions.erxn sinks.txt"


for i in $(find tools workflows -name "*.cwl"); do
 echo "Validating CWL: ${i}"
 cwltool --validate ${i}
done
for j in $(find workflows -name "*-job.yaml"); do
 echo "Running workflow job: ${j}"
 tmp=`mktemp -d`
 cwltool --verbose --no-match-user --default-container debian --outdir $tmp ${j}
 ls $tmp
done
