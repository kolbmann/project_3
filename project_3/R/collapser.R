#' Choose node(s) to collapse in a tree
#' 
#' @param tree_file .tre mcmc file
#' @param node_index node index number to subset
#' @return interactive plot with blue nodes to collapse based on desire
#' @export collapser

collapser<- function(tree_file, node_index){
  t <- read.beast(tree_file)
  w <- as.phylo(t)
  x <- tree_subset(w, node = node_index,levels_back = 1)
  v <- ggtree(w)+
    geom_nodelab(aes(label=index))+
    geom_tiplab(aes(label=index))
  v <- as.phylo(v)
  v %>% collapseTree(node=node_index)
}