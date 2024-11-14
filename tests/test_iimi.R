################load library####################
library(iimi)

###############setup working directory and load data####################
# setup working directory
setwd("C:/Users/dsain/Desktop/CLEANSED/")
# load the coverage data if needed
load("./DataWrangling/RData/model_data_cg_a_0_11723_50_10.rda")

get_url <-
  "https://github.com/virtool/iimi/blob/main/data/virus_segments.rda?raw=true"
load(url(get_url))

#######################create unreliable regions if needed######################
#############iimi already has a pre-built unreliable region#####################
unmappable <- create_mappability_profile(
  "path/to/bam/files/of/virus/to/virus/or/virus/to/host",
  category = "unmappable region",
  virus_info = virus_segments
)
high_nucleotide <- create_high_nucleotide_content(virus_info = virus_segments)

# combine `unmappable` and `high_nucleotide` as the unreliable regions

##################detect using iimi#########################
# bam to rle
rles <- convert_bam_to_rle("path/to/bam/file/folder")
# rle to df
prediction_df <- convert_rle_to_df(rles)

# train a model (if needed) using `prediction_df`
# i used previously converted df
fit <- train_iimi(model.data.0.cg[, -5], model.data.0.cg[, 5])
# prediction step using your test data
result <- predict_iimi(newdata = test_data)

