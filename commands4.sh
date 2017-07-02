maat -l hib_evo.log -c git -a authors > authors.csv
maat -c git -l hib_evo.log -a coupling --temporal-period 1
maat -c git -l hib_evo.log -a main-dev > main_devs.csv
maat -c git -l hib_evo.log -a entity-effort > entity_effort.csv
git log --all --format='%aN' | sort -u > authors_fractals.csv


