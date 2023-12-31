% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fn_sponge.R
\name{sponge}
\alias{sponge}
\title{Compute competing endogeneous RNA interactions using
Sparse Partial correlations ON Gene Expression (SPONGE)}
\usage{
sponge(
  gene_expr,
  mir_expr,
  mir_interactions = NULL,
  log.level = "ERROR",
  log.every.n = 1e+05,
  log.file = NULL,
  selected.genes = NULL,
  gene.combinations = NULL,
  each.miRNA = FALSE,
  min.cor = 0.1,
  parallel.chunks = 1000,
  random_seed = NULL,
  result_as_dt = FALSE
)
}
\arguments{
\item{gene_expr}{A gene expression matrix with samples in rows and featurs
in columns. Alternatively an object of class ExpressionSet.}

\item{mir_expr}{A miRNA expression matrix with samples in rows and features
in columns. Alternatively an object of class ExpressionSet.}

\item{mir_interactions}{A named list of genes, where for each gene we list
all miRNA interaction partners that should be considered.}

\item{log.level}{The log level, can be one of "info", "debug", "error"}

\item{log.every.n}{write to the log after every n steps}

\item{log.file}{write log to a file, particularly useful for paralleliyzation}

\item{selected.genes}{Operate only on a subset of genes, particularly
useful for bootstrapping}

\item{gene.combinations}{A data frame of combinations of genes to be tested.
Gene names are taken from the first two columns and have to match the names
used for gene_expr}

\item{each.miRNA}{Whether to consider individual miRNAs or pooling
them.}

\item{min.cor}{Consider only gene pairs with a minimum correlation specified
here.}

\item{parallel.chunks}{Split into this number of tasks if parallel processing
is set up. The number should be high enough to guarantee equal distribution
of the work load in parallel execution. However, if the number is too large,
e.g. in the worst case one chunk per computation, the overhead causes more
computing time than can be saved by parallel execution. Register a parallel
backend that is compatible with foreach to use this feature. More information
can be found in the documentation of the foreach / doParallel packages.}

\item{random_seed}{A random seed to be used for reproducible results}

\item{result_as_dt}{whether to return results as data table or data frame}
}
\value{
A data frame with significant gene-gene competetive endogenous RNA
or 'sponge' interactions
}
\description{
Compute competing endogeneous RNA interactions using
Sparse Partial correlations ON Gene Expression (SPONGE)
}
\examples{
#First, extract miRNA candidates for each of the genes
#using sponge_gene_miRNA_interaction_filter. Here we use a prepared
#dataset mir_interactions.

#Second we compute ceRNA interactions for all pairwise combinations of genes
#using all miRNAs remaining after filtering through elasticnet.
ceRNA_interactions <- sponge(
gene_expr = gene_expr,
mir_expr = mir_expr,
mir_interactions = mir_interactions)
}
