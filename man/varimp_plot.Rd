% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/nn.R
\name{varimp_plot}
\alias{varimp_plot}
\title{Plot permutation importance}
\usage{
varimp_plot(object, rvar, lev, data = NULL, seed = 1234)
}
\arguments{
\item{object}{Model object created by Radiant}

\item{rvar}{Label to identify the response or target variable}

\item{lev}{Reference class for binary classifier (rvar)}

\item{data}{Data to use for prediction. Will default to the data used to estimate the model}

\item{seed}{Random seed for reproducibility}
}
\description{
Plot permutation importance
}
