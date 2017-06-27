git checkout `git rev-list -n 1 --before="2013-09-06" master`
git log --pretty=format:[%h] %an %ad %s --date=short --numstat --before=2013-09-06 --after=2012-01-01 >| hib_evo.log
maat -l hib_evo.log -c git -a summary
cloc ./ --by-file --csv --quiet --report-file=hib_lines.csv
maat -l hib_evo.log -c git -a revisions > hib_freqs.csv
python ~/Development/ixmaat0.8.5/scripts\ 4/merge_comp_freqs.py hib_freqs.csv hib_lines.csv
python ~/Development/ixmaat0.8.5/scripts\ 4/csv_as_enclosure_json.py --structure hib_lines.csv  --weights output.csv > output.json
python -m SimpleHTTPServer 8888
python ~/Development/ixmaat0.8.5/scripts\ 4/complexity_analysis.py hibernate-core/src/main/java/org/hibernate/cfg/Configuration.java
python ~/Development/ixmaat0.8.5/scripts\ 4/git_complexity_trend.py   --start ccc087b --end 46c962e   --file hibernate-core/src/main/java/org/hibernate/cfg/Configuration.java
maat -l hib_evo.log -c git -a soc > sum_of_coupling.csv
maat -l hib_evo.log -c git -a coupling > coupling.csv
