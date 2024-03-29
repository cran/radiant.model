% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/evalbin.R
\name{auc}
\alias{auc}
\title{Area Under the RO Curve (AUC)}
\usage{
auc(pred, rvar, lev)
}
\arguments{
\item{pred}{Prediction or predictor}

\item{rvar}{Response variable}

\item{lev}{The level in the response variable defined as success}
}
\value{
AUC statistic
}
\description{
Area Under the RO Curve (AUC)
}
\details{
See \url{https://radiant-rstats.github.io/docs/model/evalbin.html} for an example in Radiant
}
\examples{
auc(runif(20000), dvd$buy, "yes")
auc(ifelse(dvd$buy == "yes", 1, 0), dvd$buy, "yes")
}
\seealso{
\code{\link{evalbin}} to calculate results

\code{\link{summary.evalbin}} to summarize results

\code{\link{plot.evalbin}} to plot results
}
