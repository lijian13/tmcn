\name{toPinyin}
\alias{toPinyin}
\title{Convert a chinese text to pinyin format.}
\usage{
toPinyin(string, capitalize = FALSE)
}
\arguments{
  \item{string}{A character vector.}

  \item{capitalize}{Whether to capitalize the first letter
  of each word.}
}
\value{
A character vector in pinyin format.
}
\description{
Convert a chinese text to pinyin format.
}
\examples{
\dontrun{
toPinyin("the quick red fox jumps over the lazy brown dog")
}
}
\author{
Jian Li <\email{rweibo@sina.com}>
}
\keyword{string}

