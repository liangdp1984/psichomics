% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/groups.R
\name{createGroupByAttribute}
\alias{createGroupByAttribute}
\title{Split elements into groups based on a given column of a dataset}
\usage{
createGroupByAttribute(col, dataset)
}
\arguments{
\item{col}{Character: column name}

\item{dataset}{Matrix or data frame: dataset}
}
\value{
Named list with each unique value from a given column and respective
elements
}
\description{
Elements are identified by their respective row name.
}
\examples{
df <- data.frame(gender=c("male", "female"),
                 stage=paste("stage", c(1, 3, 1, 4, 2, 3, 2, 2)))
rownames(df) <- paste0("subject-", LETTERS[1:8])
createGroupByAttribute(col="stage", dataset=df)
}
\seealso{
Other functions for data grouping: 
\code{\link{getGeneList}()},
\code{\link{getSampleFromSubject}()},
\code{\link{getSubjectFromSample}()},
\code{\link{groupPerElem}()},
\code{\link{plotGroupIndependence}()},
\code{\link{testGroupIndependence}()}
}
\concept{functions for data grouping}
