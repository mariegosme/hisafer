% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/visualize.R
\name{hisafe_snapshot}
\alias{hisafe_snapshot}
\title{Create daily plots combining hisafe_slice() & plot_hisafe_cells()}
\usage{
hisafe_snapshot(hop, output.path = NULL,
  file.prefix = "HISAFE_Snapshot",
  cells.var = "relativeTotalParIncident", date.min = NA,
  date.max = NA, dates = NULL, rel.dates = NULL,
  simu.names = "all", plot.x = "x", slice = TRUE, trees = TRUE,
  crops = TRUE, voxels = TRUE, cells = TRUE, complete.only = FALSE,
  mem.max = 10, device = "png", dpi = 250, vars = list(crown.alpha
  = "leafArea", trunk.alpha = "carbonLabile", crop.alpha = "lai",
  yield.alpha = "eai", voxel.alpha = "totalTreeRootDensity", voxel.border =
  "cropRootDensity", voxel.L.size = "theta", voxel.C.size =
  "totalTreeCoarseRootBiomass", voxel.R.size = "mineralNitrogenStock",
  voxel.L.alpha = "totalTreeWaterUptake", voxel.C.alpha = "fineRootCost",
  voxel.R.alpha = "totalTreeNitrogenUptake"), ...)
}
\arguments{
\item{hop}{An object of class hop.}

\item{output.path}{A character stting indicating the path to the directory where plots should be saved.
If no value is provided, the experiment/simulation path is read from the hop object, and a directory is created there called "analysis/snapshots".}

\item{file.prefix}{A character string of the prefix with which to name each plot file. File names will be this prefix appended with the date.}

\item{cells.var}{A character string of the name of the variable to pass to \code{\link{plot_hisafe_cells}}.}

\item{date.min}{A character string of the minimum date to plot, in the format "YYYY-MM-DD" or of class Date.
If NA, the minimum date in \code{hop} is used. Only used if \code{dates} is \code{NULL}.}

\item{date.max}{A character string of the maximum date to plot, in the format "YYYY-MM-DD" or of class Date.
If NA, the maximum date in \code{hop} is used. Only used if \code{dates} is \code{NULL}.}

\item{dates}{A character vector (in the format "YYYY-MM-DD") or a vector of class Date of the dates to plot.
If \code{NULL}, then \code{date.max} and \code{date.min} are used instad.}

\item{rel.dates}{A character vector (in the format "YYYY-MM-DD") or a vector of class Date of the dates from which to scale all variables.
In the plot, all variables will be scaled to be between their minimum and maximum values across these dates.}

\item{simu.names}{A character vector of the SimulationNames within \code{hop} to include. Use "all" to include all available values.}

\item{plot.x}{Either "x" or "y", indicating which axis of the Hi-sAFe scene should be plotted along the x-axis of the plot.
This will be applied to the plots from both \code{\link{hisafe_slice}} and \code{\link{plot_hisafe_cells}}.
Setting to "xy" is only possible when \code{hop} contains or is filtered to a single simulation.}

\item{slice}{A logical indicating whether the plot from \code{\link{hisafe_slice}} should be included.}

\item{trees}{A logical indicating whether to plot trees via \code{\link{plot_hisafe_cells}}.}

\item{crops}{A logical indicating whether to plot crops via \code{\link{plot_hisafe_cells}}.}

\item{voxels}{A logical indicating whether to plot voxels via \code{\link{plot_hisafe_cells}}.}

\item{cells}{A logical indicating whether the plot from \code{\link{plot_hisafe_cells}} should be included.}

\item{complete.only}{A logical indicating whether plots should only be created if ALL simulations have data for the desired crops/cells/voxels on \code{date}.}

\item{mem.max}{An integer specifying the maximum number of days into the past to search
for crop/cell/voxel data when no data is available for a given date within \code{hop}.}

\item{device}{Graphical device to use for output files. See ggplot2::ggsave().}

\item{dpi}{Resolution of output files. See ggplot2::ggsave().}

\item{vars}{A list of variable names passed to \code{\link{hisafe_slice}}. See \code{\link{hisafe_slice}} for details.}

\item{...}{Other arguments passed to \code{\link{hisafe_slice}}.}
}
\value{
Invisibly returns the final plot object that was created.
}
\description{
Creates daily plots combining \code{\link{hisafe_slice}} & \code{\link{plot_hisafe_cells}} and writes them to an output directory.
Requires the egg and gtable packages.
This function creates the raw materials (daily images) for animations/videos of Hi-sAFe simulations.
}
\examples{
\dontrun{
}
}
\seealso{
Other hisafe visualization functions: \code{\link{hisafe_root3D}},
  \code{\link{hisafe_slice}}
}
\concept{hisafe visualization functions}
