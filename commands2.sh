maat -l maat_evo.log -c git -a coupling -g maat_src_test_boundaries.txt > arch_boundaries_coupling.csv
maat -l maat_evo.log -c git -a coupling -g maat_src_detailed_test_boundaries.txt > arch_boundaries_coupling_2.csv
maat -l maat_evo.log -c git -a revisions -g maat_src_test_boundaries.txt >arch_boundaries_revs.csv
maat -l maat_evo.log -c git -a coupling -g maat_pipes_filter_boundaries.txt > code_beauty.csv

