% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils_interface.R
\name{sidebar}
\alias{sidebar}
\title{Sidebar without a well}
\usage{
sidebar(..., width = 4)
}
\arguments{
\item{...}{Output elements to include in the sidebar/main panel.}

\item{width}{The width of the sidebar and main panel. By default, the
sidebar takes up 1/3 of the width, and the main panel 2/3. The total
width must be 12 or less.}
}
\value{
HTML elements
}
\description{
Modified version of \code{shiny::sidebarPanel} without a well
}
\keyword{internal}
