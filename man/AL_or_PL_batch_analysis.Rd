% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/batch-att-lims-fns.R
\name{AL_or_PL_batch_analysis}
\alias{AL_or_PL_batch_analysis}
\title{Analyze plastic limit or adhesion limit data for multiple specimens}
\usage{
AL_or_PL_batch_analysis(type)
}
\arguments{
\item{type}{choose AL or PL}

\item{dir}{directory containing the raw data file}
}
\value{
a tibble containing the liquid limits along with information needed
to uniquely identify each specimen
}
\description{
Called internally by either \code{AL_batch_analysis()} or \code{PL_batch_analysis()}
}
\details{
Function searches for a file containing the string "AL-raw-data" or
"PL-raw-data" depending on requested type. File is read and analyzed. The
original (empty) file should have been written using
\code{\link[=att_lims_datasheets]{att_lims_datasheets()}} to ensure compatibility of column names.
}
