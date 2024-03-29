% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rforest.R
\name{predict.rforest}
\alias{predict.rforest}
\title{Predict method for the rforest function}
\usage{
\method{predict}{rforest}(
  object,
  pred_data = NULL,
  pred_cmd = "",
  pred_names = "",
  OOB = NULL,
  dec = 3,
  envir = parent.frame(),
  ...
)
}
\arguments{
\item{object}{Return value from \code{\link{rforest}}}

\item{pred_data}{Provide the dataframe to generate predictions (e.g., diamonds). The dataset must contain all columns used in the estimation}

\item{pred_cmd}{Generate predictions using a command. For example, `pclass = levels(pclass)` would produce predictions for the different
levels of factor `pclass`. To add another variable, create a vector of prediction strings, (e.g., c('pclass = levels(pclass)', 'age = seq(0,100,20)')}

\item{pred_names}{Names for the predictions to be stored. If one name is provided, only the first column of predictions is stored. If empty, the levels
in the response variable of the rforest model will be used}

\item{OOB}{Use Out-Of-Bag predictions (TRUE or FALSE). Relevant when evaluating predictions for the training sample. If set to NULL, datasets will be compared
to determine if OOB predictions should be used}

\item{dec}{Number of decimals to show}

\item{envir}{Environment to extract data from}

\item{...}{further arguments passed to or from other methods}
}
\description{
Predict method for the rforest function
}
\details{
See \url{https://radiant-rstats.github.io/docs/model/rforest.html} for an example in Radiant
}
\examples{
result <- rforest(titanic, "survived", c("pclass", "sex"), lev = "Yes")
predict(result, pred_cmd = "pclass = levels(pclass)")
result <- rforest(diamonds, "price", "carat:color", type = "regression")
predict(result, pred_cmd = "carat = 1:3")
predict(result, pred_data = diamonds) \%>\% head()

}
\seealso{
\code{\link{rforest}} to generate the result

\code{\link{summary.rforest}} to summarize results
}
