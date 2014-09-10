\name{strstrip}
\alias{strstrip}
\title{Trim space of a string.}
\usage{
strstrip(string, side = c("both", "left", "right"))
}
\arguments{
  \item{string}{A character vector.}

  \item{side}{Which side of the string to be trimed,
  'both', 'left' or 'right'.}
}
\value{
Trimed vector.
}
\description{
Trim space of a string.
}
\examples{
\dontrun{
strstrip(c("\\taaaa ", " bbbb    "))
}
}
\author{
Jian Li <\email{rweibo@sina.com}>
}
\keyword{string}

