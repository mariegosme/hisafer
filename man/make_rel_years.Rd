% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/misc.R
\name{make_rel_years}
\alias{make_rel_years}
\title{Convert absolute years to relative years in a hop}
\usage{
make_rel_years(hop, year1 = NULL)
}
\arguments{
\item{hop}{An object of class hop or face.}

\item{year1}{The year that should be treated as year 1. Must be less than or equal to the minimum year in the hop.}
}
\value{
A hop
}
\description{
Converts absolute years to relative years (minimum year is year 1) in the Year column of all hop elements.
Does NOT convert dates in the Date column.
}
\examples{
\dontrun{
range(hop$trees$Year)
hop.mod <- make_rel_years(hop)
range(hop.mod$trees$Year)
}
}
\seealso{
Other hisafe helper functions: \code{\link{copy_hisafe_template}},
  \code{\link{get_pheno_dates}},
  \code{\link{get_pruning_dates}},
  \code{\link{hip_params}}, \code{\link{hisafe_info}},
  \code{\link{hisafe_profiles}}, \code{\link{hop_filter}},
  \code{\link{hop_merge}}, \code{\link{hop_params}},
  \code{\link{hop_rename}}, \code{\link{is_face}},
  \code{\link{is_hip}}, \code{\link{is_hop}},
  \code{\link{join_profiles}}, \code{\link{profile_check}},
  \code{\link{variable_check}},
  \code{\link{which_profiles}}
}
\concept{hisafe helper functions}
