# GC_GNN
Collaboration repository for novel work based upon HPDC'23 and ICS'23 papers.

# Initial Experiment:
Determine if embeddings from GNN can be used to improve GC performance

## Procedure:

* Extract template from GC\_TLA for use
  + Picked Polybench's Syr2k benchmark as I have exhaustive empirical data for two application scales, which will make analyses easier
  + File: syr2k\_reference/mmp.c
* Reconstruct the filled-in templates based on original tuning data used in the Gaussian Copula
  + Original training data referenced from YTOPT source data
    * File: syr2k\_reference/syr2k\_S.csv
    * File: syr2k\_reference/syr2k\_L.csv
  + Script fill\_in.py mimics the experiment templating process.
  + Execute: python3 fill\_in.py --csv syr2k\_reference/\*.csv --template syr2k\_reference/mmp.c --output-dir syr2k\_recreations
* Compile all templates in the same manner as original experiments
  + Script build\_compile\_script.py writes a bash script to mitigate environment/replication issues.
  + Execute: python3 build\_compile\_script.py
    + After running, compile\_script.sh will exist. Ensure it can be executed (chmod +x compile\_script.sh) and execute it.
    + Execute: ./compile\_script.sh
    + There are a LOT of templates, this can take up to half an hour or so to complete

# Next Steps:
* Use GNN to generate embeddings for each executable in syr2k\_recreations
* Compare GC performance:
  + With GC\_TLA approach only (quantile filtering on source task objectives)
  + With GNN embeddings after quantile filtering
