% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fn_spongeffects_utility.R
\name{prepare_metabric_for_spongEffects}
\alias{prepare_metabric_for_spongEffects}
\title{prepare METABRIC formats for spongEffects}
\usage{
prepare_metabric_for_spongEffects(
  metabric_expression,
  metabric_metadata,
  subtypes_of_interest,
  bioMart_gene_ensembl = "hsapiens_gene_ensembl",
  bioMart_gene_symbol_columns = "hgnc_symbol"
)
}
\arguments{
\item{metabric_expression}{filepath to expression data in metabric format}

\item{metabric_metadata}{filepath to metabric metadata in metabric format}

\item{subtypes_of_interest}{array e.g.,
c("LumA",  "LumB",  "Her2",  "Basal", "Normal")}

\item{bioMart_gene_ensembl}{bioMart gene ensemble name
(e.g., hsapiens_gene_ensembl).
(See https://www.bioconductor.org/packages/release/bioc/vignettes/biomaRt/inst/doc/biomaRt.html)
(default: hsapiens_gene_ensembl)}

\item{bioMart_gene_symbol_columns}{bioMart dataset column for gene symbols
(e.g. human: hgnc_symbol, mouse: mgi_symbol)
(default: hgnc_symbol)}
}
\value{
list with metabric expression and metadata. You can access it with
list$objectname for further spongEffects steps
}
\description{
prepare METABRIC formats for spongEffects
}
