# note that BIOFIRE_API_KEY was added to GitHub secrets
# and is available as an environment variable in the workflow
# from the biofire study

library(tidyverse)
library(REDCapTidieR)
library(labelled)

# define url
redcap_uri <- "https://redcapproduction.umms.med.umich.edu/redcap_v14.0.15/API/"


# get the data
data <- read_redcap(redcap_uri, REDCAP_API_KEY)

head(data)