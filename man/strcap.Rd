\name{strcap}
\alias{strcap}
\title{Mixed case capitalizing.}
\usage{
strcap(string, strict = FALSE)
}
\arguments{
  \item{string}{A character vector.}

  \item{strict}{Whether strict.}
}
\value{
A character vector with the first letter of each word
capitalized.
}
\description{
To capitalize every first letter of a word.
}
\examples{
\dontrun{
strcap("the quick red fox jumps over the lazy brown dog")
}
}
\author{
Jian Li <\email{rweibo@sina.com}>
}
\keyword{string}

