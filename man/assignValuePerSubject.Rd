% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/analysis.R
\name{assignValuePerSubject}
\alias{assignValuePerSubject}
\alias{getValuePerSubject}
\alias{getValuePerPatient}
\alias{assignValuePerPatient}
\title{Assign average sample values to their corresponding subjects}
\usage{
assignValuePerSubject(
  data,
  match,
  clinical = NULL,
  patients = NULL,
  samples = NULL
)
}
\arguments{
\item{data}{One-row data frame/matrix or vector: values per sample for a
single gene}

\item{match}{Matrix: match between samples and subjects}

\item{clinical}{Data frame or matrix: clinical dataset (only required if the
\code{subjects} argument is not handed)}

\item{patients}{Character: subject identifiers (only required if the
\code{clinical} argument is not handed)}

\item{samples}{Character: samples to use when assigning values per subject
(if \code{NULL}, all samples will be used)}
}
\value{
Values per subject
}
\description{
Assign average sample values to their corresponding subjects
}
\examples{
# Calculate PSI for skipped exon (SE) and mutually exclusive (MXE) events
annot <- readFile("ex_splicing_annotation.RDS")
junctionQuant <- readFile("ex_junctionQuant.RDS")

psi <- quantifySplicing(annot, junctionQuant, eventType=c("SE", "MXE"))

# Match between subjects and samples
match <- rep(paste("Subject", 1:3), 2)
names(match) <- colnames(psi)

# Assign PSI values to each subject based on the PSI of their samples
assignValuePerSubject(psi[3, ], match)
}
\seealso{
Other functions to analyse survival: 
\code{\link{getAttributesTime}()},
\code{\link{labelBasedOnCutoff}()},
\code{\link{optimalSurvivalCutoff}()},
\code{\link{plotSurvivalCurves}()},
\code{\link{plotSurvivalPvaluesByCutoff}()},
\code{\link{processSurvTerms}()},
\code{\link{survdiffTerms}()},
\code{\link{survfit.survTerms}()},
\code{\link{testSurvival}()}
}
\concept{functions to analyse survival}
