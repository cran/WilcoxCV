\name{generate.cv}
\alias{generate.cv}

\title{Generating groups for cross-validation}
\usage{
generate.cv(n,m)
}
\arguments{
  \item{n}{The total number of observations in the data set.}
  \item{m}{The desired number of groups.}
}
\description{
The function \code{generate.cv}  generates randomly \code{m} groups for \code{m}-fold cross-validation. 
}


\details{Leave-one-out cross-validation is a special case of cross-validation, with \code{m}=\code{n}.

 
}

\value{
  A \code{m} x ceiling(\code{n}/\code{m}) matrix giving the indices of the observations included in each
group. The i-th row gives the indices of observations included in the i-th group. If the \code{m}
groups are not perfectly equally sized, the last column includes one or several zero(s).
}

\references{
  A. L. Boulesteix (2007). WilcoxCV: an R package for fast variable selection in cross-validation. Bioinformatics 23:1702-1704.

}

\author{
  Anne-Laure Boulesteix (\url{http://www.ibe.med.uni-muenchen.de/organisation/mitarbeiter/020_professuren/boulesteix/index.html}) 
  
 

}
\seealso{\code{\link{generate.split}},\code{\link{wilcox.split}},\code{\link{wilcox.selection.split}}}

\examples{
# load WilcoxCV library
library(WilcoxCV)

# Generate 10 groups for a data set of size 95.
my.cv<-generate.cv(n=95,m=10)
}
\keyword{htest}
