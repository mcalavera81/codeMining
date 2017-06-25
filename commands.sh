git checkout `git rev-list -n 1 --before="2013-09-06" master`
git log --pretty=format:[%h] %an %ad %s --date=short --numstat --before=2013-09-06 --after=2012-01-01 >| hib_evo.log
maat -l hib_evo.log -c git -a summary
cloc ./ --by-file --csv --quiet --report-file=hib_lines.csv
maat -l hib_evo.log -c git -a revisions > hib_freqs.csv
python ~/Development/ixmaat0.8.5/scripts\ 4/merge_comp_freqs.py hib_freqs.csv hib_lines.csv
python ~/Development/ixmaat0.8.5/scripts\ 4/csv_as_enclosure_json.py --structure hib_lines.csv  --weights output.csv > output.json
python -m SimpleHTTPServer 8888
