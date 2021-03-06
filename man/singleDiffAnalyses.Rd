% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/analysis.R
\name{singleDiffAnalyses}
\alias{singleDiffAnalyses}
\title{Perform statistical analysis on a given splicing event}
\usage{
singleDiffAnalyses(
  vector,
  group,
  threshold = 1,
  step = 100,
  analyses = c("wilcoxRankSum", "ttest", "kruskal", "levene", "fligner")
)
}
\arguments{
\item{vector}{Numeric}

\item{group}{Character: group of each element in the vector}

\item{threshold}{Integer: minimum number of values per group}

\item{step}{Numeric: number of events before the progress bar is updated
(a bigger number allows for a faster execution)}

\item{analyses}{Character: analyses to perform (see Details)}
}
\value{
A row from a data frame with the results
}
\description{
Perform statistical analyses on a given vector containing elements from
different groups
}
\details{
The following statistical analyses may be performed by including the
respective string in the \code{analysis} argument:
\itemize{
     \item{\code{ttest} - Unpaired t-test (2 groups)}
     \item{\code{wilcoxRankSum} - Wilcoxon Rank Sum test (2 groups)}
     \item{\code{kruskal} - Kruskal test (2 or more groups)}
     \item{\code{levene} - Levene's test (2 or more groups)}
     \item{\code{fligner} - Fligner-Killeen test (2 or more groups)}
}
}
\keyword{internal}
