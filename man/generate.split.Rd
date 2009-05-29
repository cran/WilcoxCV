\name{generate.split}
\alias{generate.split}

\title{Generating random splittings into learning and test data sets}
\usage{
generate.split(niter,n,ntest)
}
\arguments{
  \item{niter}{The number of iterations (number of splits into learning and split sets).}
  \item{n}{The total number of observations in the data set.}
  \item{ntest}{The number of observations in the test sets.}
}
\description{
The function \code{generate.split}  generates \code{niter} random splittings into learning and test
data sets for use in Monte-Carlo cross-validation (MCCV).
}


\details{
This function is meant for use in Monte-Carlo cross-validation (MCCV).
 
}

\value{
  A \code{niter} x \code{ntest} matrix giving the indices of the observations included in the
test sets. The i-th row gives the indices of the \code{ntest} observations included in the test
set for the i-th MCCV iteration.
}

\references{
  A. L. Boulesteix (2007). WilcoxCV: an R package for fast variable selection in cross-validation. Bioinformatics 23:1702-1704.

}

\author{
  Anne-Laure Boulesteix (\url{http://www.ibe.med.uni-muenchen.de/organisation/mitarbeiter/020_professuren/boulesteix/index.html}) 
  
 

}
\seealso{\code{\link{generate.cv}},\code{\link{wilcox.split}},\code{\link{wilcox.selection.split}}}

\examples{
# load WilcoxCV library
library(WilcoxCV)

# Generate 50 splits with ratio 2:1 for a data set including 90 observations
my.split<-generate.split(niter=50,n=90,ntest=30)
}
\keyword{htest}
