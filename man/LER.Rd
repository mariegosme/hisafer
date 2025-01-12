% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/LER.R
\name{LER}
\alias{LER}
\title{Plot LER for yield, light, water, or nitrogen}
\usage{
LER(face, cycle = "yield", timescales = c("Annual", "Cumulative"),
  components = c("LER", "Trees", "Crop"), color.palette = c("black",
  "#009E73", "#E69F00"), size.palette = c(2, 1, 1), hline1 = TRUE,
  ymax = NA, plot = TRUE, ...)
}
\arguments{
\item{face}{An object of class "face".}

\item{cycle}{One of "yield", "nitrogen", "water", or "light".}

\item{timescales}{One or both of "Annual" and "Cumulative", indicating which timescales to plot.}

\item{components}{One or more of "LER", "Trees", and "Crop, indicating which components to plot.}

\item{color.palette}{A character vector of hex values or R standard color names defining the color palette for LER, Trees, and Crop lines, respectively.}

\item{size.palette}{A numeric vector of values defining the size for LER, Trees, and Crop lines, respectively.}

\item{hline1}{A logical indicating whether or not to plot a dotted horizontal line at y = 1.}

\item{ymax}{A numeric value for the upper limit of the y-axis. If \code{NA}, the maximum value in the data is use.}

\item{plot}{If \code{TRUE}, the default, a ggplot object is returned. If \code{FALSE}, the data that would create the plot is returned.}

\item{...}{Other arguments passed to \code{\link{plot_hisafe_cycle_bar}}.}
}
\value{
If \code{plot = TRUE}, returns a ggplot object, otherwise the data that would create the plot is returned.
}
\description{
Plot LER for yield, light, water, or nitrogen.
}
\examples{
\dontrun{
ler.plot <- LER(hop, "yield")
}
}
\seealso{
Other hisafe analysis functions: \code{\link{LER_summary}},
  \code{\link{analyze_hisafe}},
  \code{\link{cycle_summary}}, \code{\link{hisafe_budget}},
  \code{\link{plot_hisafe_cycle_bar}},
  \code{\link{plot_hisafe_cycle_ts}},
  \code{\link{stics_budget_comp}}, \code{\link{write_hop}}
}
\concept{hisafe analysis functions}
