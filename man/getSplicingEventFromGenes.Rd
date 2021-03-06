% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils_eventParsing.R
\name{getSplicingEventFromGenes}
\alias{getSplicingEventFromGenes}
\alias{getGenesFromSplicingEvents}
\title{Get alternative splicing events from genes or vice-versa}
\usage{
getSplicingEventFromGenes(genes, ASevents, data = NULL)

getGenesFromSplicingEvents(ASevents, data = NULL)
}
\arguments{
\item{genes}{Character: gene symbols (or TCGA-styled gene symbols)}

\item{ASevents}{Character: alternative splicing events}

\item{data}{Matrix or data frame: alternative splicing information}
}
\value{
Named character containing alternative splicing events or genes and
their respective genes or alternative splicing events as names (depending on
the function in use)
}
\description{
Get alternative splicing events from genes or vice-versa
}
\details{
A list of alternative splicing events is required to run
\code{getSplicingEventFromGenes}
}
\examples{
ASevents <- c("SE_1_+_201763003_201763300_201763374_201763594_NAV1",
              "SE_1_+_183515472_183516238_183516387_183518343_SMG7",
              "SE_1_+_183441784_183471388_183471526_183481972_SMG7",
              "SE_1_+_181019422_181022709_181022813_181024361_MR1",
              "SE_1_+_181695298_181700311_181700367_181701520_CACNA1E")
genes <- c("NAV1", "SMG7", "MR1", "HELLO")

# Get splicing events from genes
matchedASevents <- getSplicingEventFromGenes(genes, ASevents)

# Names of matched events are the matching input genes
names(matchedASevents)
matchedASevents

# Get genes from splicing events
matchedGenes <- getGenesFromSplicingEvents (ASevents)

# Names of matched genes are the matching input alternative splicing events
names(matchedGenes)
matchedGenes
}
