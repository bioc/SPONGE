% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fn_spongeffects_utility.R
\name{plot_confusion_matrices}
\alias{plot_confusion_matrices}
\title{plots the confusion matrix from spongEffects train_and_test()
(see Boniolo and Hoffmann 2022 et al. Fig. 3a and Fig. 3b)}
\usage{
plot_confusion_matrices(trained_model, subtypes.testing.factors)
}
\arguments{
\item{trained_model}{returned from train_and_test_model}

\item{subtypes_testing_factors}{subtypes of testing samples as factors}
}
\value{
plot of the confusion matrix

returns confusion matrix plots of the trained model
}
\description{
plots the confusion matrix from spongEffects train_and_test()
(see Boniolo and Hoffmann 2022 et al. Fig. 3a and Fig. 3b)
}
