#' Package shared imports
#'
#' Centralized imports for functions used across multiple files.
#' These roxygen directives generate `NAMESPACE` entries via roxygen2.
#'
#' @keywords internal
#' @importFrom foreach foreach
#' @importFrom doRNG %dorng%
#' @importFrom iterators iter icount idiv nextElem
#' @importFrom data.table as.data.table data.table rbindlist setkey
#' @importFrom dplyr filter mutate arrange slice select desc left_join group_by ungroup summarize transmute bind_rows count distinct pull if_else case_when rename relocate inner_join semi_join full_join
#' @importFrom tidyr gather
#' @importFrom utils head read.delim
#' @importFrom stats na.omit quantile coef cor cov2cor df lm p.adjust pf predict reorder rnorm runif sd setNames var xtabs
#' @importFrom methods is
#' @importFrom logger appender_file log_threshold
#' @importFrom rlang is_empty
#' @importFrom MASS mvrnorm ginv
#' @importFrom ppcor pcor pcor.test
#' @importFrom glmnet cv.glmnet
#' @importFrom igraph graph.data.frame E betweenness degree edge_betweenness eigen_centrality
#' @importFrom randomForest importance
#' @importFrom biomaRt getBM useDataset useMart
#' @importFrom ggpubr ggarrange
#' @importFrom tibble rownames_to_column
"_PACKAGE"
