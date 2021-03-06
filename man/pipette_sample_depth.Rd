% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pipette_sample_depth.R
\name{pipette_sample_depth}
\alias{pipette_sample_depth}
\title{Compute sampling depth for pipette analysis}
\usage{
pipette_sample_depth(
  particle_diameter,
  duration_hr,
  Gs = 2.7,
  ambient_temp_c = 22
)
}
\arguments{
\item{particle_diameter}{equivalent spherical diameter, microns}

\item{duration_hr}{hours since stirring (decimal)}

\item{Gs}{specific gravity of soil particles; defaults to 2.7}

\item{ambient_temp_c}{measured temperature to nearest 0.1 degree C}
}
\value{
numeric vector of length 1 (centimeters below liquid surface to sample)
}
\description{
Ideally, the same protocol is followed each and every time. In reality,
schedules sometimes must be adjusted. This function computes the proper
pipette sampling depth for a given time interval after stirring was
completed.
}
\examples{
pipette_sample_depth(particle_diameter = 2, duration_hr = 4)

}
