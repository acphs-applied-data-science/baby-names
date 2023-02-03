# import_baby_names
# - Downloads state baby names zip file.
# - Unzips the state baby names file and unzips it in data.
# - Imports the data and creates baby_names.rds
# - Clean up the folder, deleting the unneeded TXT files and the zip file.

pacman::p_load(curl, rio, tidyverse)
remote_file <- "https://www.ssa.gov/oact/babynames/state/namesbystate.zip"
local_file <- "data/namesbystate.zip"

curl_download(url = remote_file, destfile = local_file)
unzip(local_file, exdir = "data")

data_files <- list.files(path = "data", pattern = "TXT", full.names = TRUE)

baby_names <- read_csv(
  file = data_files,
  col_names = c("state_code", "sex", "yob", "name", "n_occurrences")
  )

write_rds(baby_names, "data/baby_names.rds")

unlink(data_files)
unlink(local_file)
