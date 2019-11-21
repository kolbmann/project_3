#' Sample every nth row of a log file to create distribution
#' Requires tsv format of log file
#' 
#' @param log_file .log file to be sampled from 
#' @param size Number of rows to sample from log_file
#' @param outpath Filepath for writting sample to a .tsv
#' @return First 5 rows of the log file
#' @export log_sampler

log_sampler <- function(log_file, size, outpath){
  data <- read.csv(file = log_file, sep = "")
  thinning <- sample_n(data, size = size, replace = FALSE)
  return(head(thinning))
  write.csv(thinning, file = outpath, sep = "")
}