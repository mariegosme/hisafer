% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot_scene.R
\name{plot_hisafe_scene}
\alias{plot_hisafe_scene}
\title{Plot a map of the simulated Hi-sAFe scene}
\usage{
plot_hisafe_scene(hip, simu.name = NULL, output.path = NULL)
}
\arguments{
\item{hip}{An object of class \code{hip}.}

\item{simu.name}{A character string of the name of the simulation within \code{hip} to plot.
Required only if there is more than one simulation within \code{hip}.}

\item{output.path}{A character string of the path where a pdf of the plot should be saved.
If \code{NULL}, the default, then no plot is saved to the disk.}
}
\value{
Returns a ggplot object. Also writes a pdf of the plot to disk if \code{output.path} is provied.
}
\description{
Plots a map of the simulated Hi-sAFe scene.
}
\examples{
\dontrun{
# After reading in Hi-sAFe simulation data via:
# Once a hip object is created:
myhip <- define_hisafe(path = "./simulations", latitude = c(30,60))

# Plot the scene of one of the simulations:
plot_hisafe_scene(myhip)
}
}
\seealso{
Other hisafe plot functions: \code{\link{plot_hisafe_annualcells}},
  \code{\link{plot_hisafe_bg}},
  \code{\link{plot_hisafe_cells}},
  \code{\link{plot_hisafe_monthcells}},
  \code{\link{plot_hisafe_tstress}},
  \code{\link{plot_hisafe_ts}},
  \code{\link{plot_hisafe_voxels}}
}
\concept{hisafe plot functions}
