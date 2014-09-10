\name{strpad}
\alias{strpad}
\title{Pad a string to a specified length with a padding character.}
\usage{
strpad(string, width = 0, side = c("left", "right", "both"), pad = " ")
}
\arguments{
  \item{string}{A character vector.}

  \item{width}{The number of characters of the string after
  padding.}

  \item{side}{Which side to pad.}

  \item{pad}{The padding character.}
}
\value{
A character vector after padding.
}
\description{
Pad a string to a specified length with a padding
character.
}
\examples{
\dontrun{
strpad(1:5, width = 4, pad = "0")
}
}
\author{
Jian Li <\email{rweibo@sina.com}>
}
\keyword{string}

