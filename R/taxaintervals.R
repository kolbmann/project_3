# Create an LTT plot from tree file and save as a JPEG
#
#' @param tree_file Tree file to plot
#' @param outplot File path for saving plot

library(ape)
library(treeio)
library(phytools)

taxaintervals <- function(tree_file, outplot){
  t <- read.beast(tree_file)
  t <- as.phylo(t)
  p <- ltt(t, plot = TRUE, gamma = TRUE, main="Lineages through Time")
  jpeg(file=outplot)
  dev.off()
}

taxaintervals("data/ants.mcc.trees", "output/LTT_plot")