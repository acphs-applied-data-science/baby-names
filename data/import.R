# import
# - Delete existing PDF and rds files.
# - Source import_baby_names.R and import_census_regions.R

files_to_delete <- c(
  list.files(path = "data", pattern = "pdf", full.names = TRUE),
  list.files(path = "data", pattern = "rds", full.names = TRUE)
)
unlink(files_to_delete)

source("data/import_baby_names.R")
source("data/import_census_regions.R")