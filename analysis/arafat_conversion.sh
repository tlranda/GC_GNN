#!/bin/bash

echo "Place ALL results to be converted in \"arafat_all\" directory";
echo "NOTE: Any double-underscore \"3mm\" results (ie: GPTune__3mm.csv) from Arafat are OUTDATED and should be converted to .oldcsv to ensure everything is OK!"
read -p "Ready? ENTER to continue, text+ENTER to skip, CTRL+C to quit: " x;
if [ ${#x} -eq 0 ]; then
    todo="python3 mass_convert.py";
    echo "${todo}";
    eval "${todo}";
    echo "";
    for subdir in `ls -d arafat_all_convert/*`; do
        basedir=$( basename ${subdir} );
        todo="rm -f ${subdir}/all_arafat_${basedir}.csv";
        echo "${todo}";
        eval "${todo}";
        echo "";
        todo="python3 stapler.py --from ${subdir}/*.csv --to ${subdir}/all_arafat_${basedir}.csv";
        echo "${todo}";
        eval "${todo}";
        echo "";
    done;
    todo="python3 check_expectations.py";
    echo "${todo}";
    eval "${todo}";
fi

echo "Reordering searches will be placed in \"reordered_searches\" directory, possibly overriding previous results"
read -p "OK? ENTER to continue, text+ENTER to skip, CTRL+C to quit: " x;
if [ ${#x} -eq 0 ]; then
    for subdir in `ls -d arafat_all_convert/*`; do
        basedir=$( basename ${subdir} );
        altdir="${basedir}";
        if [ "${basedir}" == "3mm" ]; then
            altdir="_3mm";
        fi
        for basesearch in `ls -d rawsearches/${altdir}/*.csv`; do
            csv=$( basename ${basesearch} );
            todo="python3 endToEnd.py arafat_all_convert/${basedir}/all_arafat_${basedir}.csv --rank-column score --invert-sort --no-plots --searches ${basesearch} --reordered-export reordered_searches/${altdir}/${csv}";
            echo "${todo}";
            eval "${todo}";
        done;
    done;
    todo="python3 check_reorder.py";
    echo "${todo}";
    eval "${todo}";
fi

