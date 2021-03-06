% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils_drawSplicingEvent.R
\name{plotSplicingEvent}
\alias{plotSplicingEvent}
\title{Plot diagram of alternative splicing events}
\usage{
plotSplicingEvent(
  ASevent,
  data = NULL,
  showText = TRUE,
  showPath = TRUE,
  showAlternative1 = TRUE,
  showAlternative2 = TRUE,
  constitutiveWidth = 60,
  alternativeWidth = NULL,
  intronWidth = NULL,
  constitutiveFill = "lightgray",
  constitutiveStroke = "darkgray",
  alternative1Fill = "#ffb153",
  alternative1Stroke = "#faa000",
  alternative2Fill = "#caa06c",
  alternative2Stroke = "#9d7039",
  class = NULL,
  style = NULL
)
}
\arguments{
\item{ASevent}{Character: alternative splicing event identifiers}

\item{data}{Matrix or data frame: alternative splicing information}

\item{showText}{Boolean: display coordinates and length (if available)}

\item{showPath}{Boolean: display alternative splicing junctions}

\item{showAlternative1}{Boolean: show alternative exon 1 and respective
splicing junctions and text?}

\item{showAlternative2}{Boolean: show alternative exon 2 and respective
splicing junctions and text? (only related with mutually exclusive exons)}

\item{constitutiveWidth}{Numeric: width of constitutive exon(s)}

\item{alternativeWidth}{Numeric: width of alternative exon(s)}

\item{intronWidth}{Numeric: width of intron's representation}

\item{constitutiveFill}{Character: fill colour of constitutive exons}

\item{constitutiveStroke}{Character: stroke colour of constitutive exons}

\item{alternative1Fill}{Character: fill colour of alternative exon 1}

\item{alternative1Stroke}{Character: stroke colour of alternative exon 1}

\item{alternative2Fill}{Character: fill colour of alternative exon 2}

\item{alternative2Stroke}{Character: stroke colour of alternative exon 2}

\item{class}{Character: class of SVG parent tag}

\item{style}{Character: style of SVG parent tag}
}
\value{
List of SVG (one for each alternative splicing event)
}
\description{
Plot diagram of alternative splicing events
}
\examples{
ASevent <- c(
    "SE_9_+_6486925_6492303_6492401_6493826_UHRF2",
    "SE_11_+_86925_92303_92401_93826_TESTING/MHG2",
    "A5SS_15_+_63353472_63353987_63354414_TPM1",
    "A3SS_3_-_145796903_145794682_145795711_PLOD2",
    "AFE_17_-_15165746_15168471_15164078_PMP22",
    "ALE_18_-_5395066_5394792_5393477_EPB41L3",
    "MXE_15_+_63335142_63335905_63336030_63336226_63336351_63349184_TPM1")
diagram <- plotSplicingEvent(ASevent)

diagram[["A3SS_3_-_145796903_145794682_145795711_PLOD2"]]
diagram[[6]]
\dontrun{diagram}
}
