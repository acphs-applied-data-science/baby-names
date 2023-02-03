# import_census_regions
# - Import the Census data from GitHub.
# - Create census_regions.rds
# - No clean up required.

pacman::p_load(janitor, rio, tidyverse)
remote_file <- "https://raw.githubusercontent.com/cphalpert/census-regions/master/us%20census%20bureau%20regions%20and%20divisions.csv"
census_regions <- import(remote_file) |> clean_names()
write_rds(census_regions, "data/census_regions.rds")
