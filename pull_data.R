# note that BIOFIRE_API_KEY was added to GitHub secrets
# and is available as an environment variable in the workflow
# from the biofire study

library(tidyverse)
library(REDCapTidieR)
library(labelled)

# define url and api key
redcap_uri <- "https://redcapproduction.umms.med.umich.edu/redcap_v14.0.15/API/"

biofire_api_key <- Sys.setenv(secret) 

# get the data
data <- read_redcap(redcap_uri, biofire_api_key)

head(data)