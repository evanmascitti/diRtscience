% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/psa_helpers.R
\name{import_psa_datafile}
\alias{import_psa_datafile}
\title{Clean up a vector of file paths and then import each one as a tibble}
\usage{
import_psa_datafile(x)
}
\arguments{
\item{x}{character vector of file paths}
}
\value{
list of data frames
}
\description{
Assign the name while also making sure the protocol ID is imported
as a character type
}
