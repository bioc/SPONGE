% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fn_simulation.R
\name{sample_zero_mscor_data}
\alias{sample_zero_mscor_data}
\title{Sample mscor coefficients from pre-computed covariance matrices}
\usage{
sample_zero_mscor_data(
  cov_matrices,
  number_of_samples = 100,
  number_of_datasets = 100
)
}
\arguments{
\item{cov_matrices}{a list of pre-computed covariance matrices}

\item{number_of_samples}{the number of samples available in the expression
data}

\item{number_of_datasets}{the number of mscor coefficients to be sampled
from each covariance matrix}
}
\value{
a vector of mscor coefficients
}
\description{
Sample mscor coefficients from pre-computed covariance matrices
}
\examples{
#we select from the pre-computed covariance matrices in SPONGE
#100 for m = 5 miRNAs and gene-gene correlation 0.6
cov_matrices_selected <- precomputed_cov_matrices[["5"]][["0.6"]]
sample_zero_mscor_data(cov_matrices = cov_matrices_selected,
number_of_samples = 200, number_of_datasets = 10)
}
\seealso{
sample_zero_mscor_cov
}
