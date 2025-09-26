## clean out any previous work
outputs <- c("./lotr_project/data/raw/lotr_raw.tsv",
             "./lotr_project/data/processed/lotr_clean.tsv",
             "./lotr_project/outputs/tables/words_summary.tsv",
             list.files(path =  "./lotr_project/outputs/figures/",pattern = "*.png$", full.names = TRUE))
file.remove(outputs)

## run scripts
source("./lotr_project/scripts/00-packages.R")
source("./lotr_project/scripts/01-download-data.R")
source("./lotr_project/scripts/02-process-data.R")
source("./lotr_project/scripts/03-plot.R")
source("./lotr_project/scripts/04-summary.R")

