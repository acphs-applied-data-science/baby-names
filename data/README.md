# READ ME

# Goals:

- Provide a simple script for importing US baby names by state for further analysis.
- Provide an example of a more complicated data import process than previous examples, including an example of why we might want to separate our import process from our reporting process.
    - This data is updated only once a year. So we don't need to stress their web server downloading the data over and over and over again.

# Data

The data folder contains three R scripts:

1. import.R
  - A convenience script which will run the file-specific import scripts.
  - This allows us to develop the scripts separately.
2. import_baby_names.R
  - Imports STATE baby names from the Census bureau:
  -  Website: https://www.ssa.gov/oact/babynames/limits.html
  -  Zip file: https://www.ssa.gov/oact/babynames/state/namesbystate.zip
  -  The data files are in a ZIP file, which we will have to unzip and import.
  -  This process is made slightly more difficult because the file contains a
     PDF file, which we cannot import since it contains no data.
3. import_census_regions.R
  - Imports a CSV file of Census regions.
  - This data will enable regional analyses.

The end result of our import scripts will be two rds files,
`data/baby_names.rds` and `data/census_regions.rds`, and a PDF file titled `data/StateReadMe.pdf`.

 The data folder also contains a data set called `springfield-census-data.csv`
 which exists purely for demonstrative purposes ion the video.