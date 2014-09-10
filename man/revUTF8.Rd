\name{revUTF8}
\alias{revUTF8}
\title{Revert UTF-8 string to Chinese character.}
\usage{
revUTF8(string, utype = "R")
}
\arguments{
  \item{string}{A character vector.}

  \item{utype}{UTF-8 string type, the default is R type,
  such as "<U+XXXX>".}
}
\value{
A character vector.
}
\description{
Revert UTF-8 string to Chinese character.
}
\examples{
\dontrun{
revUTF8("1<U+4E8C>3<U+56DB>5")
}
}
\author{
Jian Li <\email{rweibo@sina.com}>
}

