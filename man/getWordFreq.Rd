\name{getWordFreq}
\alias{getWordFreq}
\title{Get the word frequency data.frame.}
\usage{
getWordFreq(string, onlyCN = TRUE, stopwords = NULL, useStopDic = FALSE)
}
\arguments{
  \item{string}{A character vector to calculate words
  frequency.}

  \item{onlyCN}{Keep only chinese words.}

  \item{stopwords}{A character vector of stop words.}

  \item{useStopDic}{Whether to use the default stop words.}
}
\value{
A data.frame.
}
\description{
Get the word frequency data.frame.
}
\examples{
\dontrun{
getWordFreq(c("a", "a", "b", "c"), onlyCN = FALSE)
}
}
\author{
Jian Li <\email{rweibo@sina.com}>
}

