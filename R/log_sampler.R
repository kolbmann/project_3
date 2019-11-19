# Sample every nth row of a log file to create distribution
# Requires tsv format and dplyr loaded
#' @param log_file .log file to be sampled from 
#' @param size Number of rows to sample from log_file
#' @param outpath Filepath for writting sample to a .tsv

library(dplyr)

log_sampler <- function(log_file, size, outpath){
  data <- read.csv(file = log_file, sep = "")
  thinning <- sample_n(data, size = size, replace = FALSE)
  return(head(thinning))
  write.csv(thinning, file = outpath, sep = "")
}

log_sampler("data/TH_rates", 25, "output/small_log.tsv")