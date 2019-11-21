#' Create an LTT plot from tree file and save as a JPEG
#' 
#' @param tree_file Tree file to plot
#' @param outplot File path for saving plot
#' @return LTT plot of data with title "Lineages through Time"
#' @export taxainteevals
#' 
taxaintervals <- function(tree_file, outplot){
  t <- read.beast(tree_file)
  t <- as.phylo(t)
  p <- ltt(t, plot = TRUE, gamma = TRUE, main="Lineages through Time")
  jpeg(file=outplot)
  dev.off()
}