# About

Analysis of US Baby Names, starting in 1910.

Goals:

1. Write a data import pipeline.
2. Discuss different grains of data.
3. Use dplyr verbs such as group_by, summarize, etc.
4. Use relational data functions such as left join and inner join.
5. Discuss how certain names which were mostly male have become acceptable female names although the opposite is generally not true.
6. Explore prevalence of different names as a function of region.
7. Explore regional differences.

# Instructions:

1. Create a new R project.
   - Be sure you KNOW where this folder is!!!!
2. Create a data folder.
3. Add README files to data and the main project.
4. Add springfield-census-data.csv to your project.
4. Create the following R scripts:
   - import_baby_names.R
   - import_census_regions.R
   - import.R
   - Additional instructions are in the data/README.md file.
   - You should eventually have `data/baby_names.rds` and `data/census_regions.rds`.
5. Create a R Markdown file called explore.Rmd:
    - This should have the following sections:
      - Data Exploration
      - Gender Changes
      - Exploring Ethnic Differences


# Data Sources:

1. Baby Names: https://www.ssa.gov/oact/babynames/limits.html
2. US Census Regions: https://github.com/cphalpert/census-regions/blob/master/us%20census%20bureau%20regions%20and%20divisions.csv
3. Simpsons Cast: https://simpsons.fandom.com/wiki/Floating_Timeline
4. Where is Springfield: https://www.today.com/popculture/simpsons-creator-reveals-real-location-springfield-702701

