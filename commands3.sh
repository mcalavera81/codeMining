git log  --pretty=format:'--%h--%ad--%aN' --no-renames --date=short --numstat  --after 2014-01-01 --before 2014-09-25 >| nop_evo_2014.log
java  -jar code-maat-1.0-SNAPSHOT-standalone.jar -c git2 -l nop_evo_2014.log -g arch_boundaries.txt -a coupling > coupling_architecture.csv
java  -jar code-maat-1.0-SNAPSHOT-standalone.jar -c git2 -l nop_evo_2014.log -g arch_boundaries.txt  -a revisions > hotspots_architecture.csv




