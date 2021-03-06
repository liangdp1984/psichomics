% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data_geNormalisationFiltering.R
\name{convertGeneIdentifiers}
\alias{convertGeneIdentifiers}
\title{Convert gene identifiers}
\usage{
convertGeneIdentifiers(
  annotation,
  genes,
  key = "ENSEMBL",
  target = "SYMBOL",
  ignoreDuplicatedTargets = TRUE
)
}
\arguments{
\item{annotation}{\code{OrgDb}: genome wide annotation for an organism, e.g.
\code{org.Hs.eg.db}}

\item{genes}{Character: genes to be converted}

\item{key}{Character: type of identifier used, e.g. \code{ENSEMBL}; read
\code{?AnnotationDbi::columns}}

\item{target}{Character: type of identifier to convert to; read
\code{?AnnotationDbi::columns}}

\item{ignoreDuplicatedTargets}{Boolean: if \code{TRUE}, identifiers that
share targets with other identifiers will not be converted}
}
\value{
Character vector of the respective targets of gene identifiers. The
previous identifiers remain other identifiers have the same target (in case
\code{ignoreDuplicatedTargets = TRUE}) or if no target was found.
}
\description{
Convert gene identifiers
}
\examples{
if ( require("org.Hs.eg.db") ) {
    columns(org.Hs.eg.db)

    genes <- c("ENSG00000012048", "ENSG00000083093", "ENSG00000141510",
               "ENSG00000051180")
    convertGeneIdentifiers(org.Hs.eg.db, genes,
                           key="ENSEMBL", target="SYMBOL")
}
}
\seealso{
Other functions for gene expression pre-processing: 
\code{\link{filterGeneExpr}()},
\code{\link{normaliseGeneExpression}()},
\code{\link{plotGeneExprPerSample}()},
\code{\link{plotLibrarySize}()},
\code{\link{plotRowStats}()}
}
\concept{functions for gene expression pre-processing}
