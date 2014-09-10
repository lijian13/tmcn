\name{strextract}
\alias{strextract}
\title{Extract matched substrings by regular expression.}
\usage{
strextract(string, pattern, invert = FALSE, ignore.case = FALSE,
  perl = FALSE, useBytes = FALSE)
}
\arguments{
  \item{string}{A character vector.}

  \item{pattern}{A character string containing a regular
  expression to be matched in the given character vector.}

  \item{invert}{A logical value: if TRUE, extract the
  non-matched substrings.}

  \item{ignore.case}{If FALSE, the pattern matching is case
  sensitive and if TRUE, case is ignored during matching.}

  \item{perl}{A logical value. Should perl-compatible
  regexps be used?}

  \item{useBytes}{A logical value. If TRUE the matching is
  done byte-by-byte rather than character-by-character.}
}
\value{
A character vector with the matched or non-matched
substrings.
}
\description{
Extract matched substrings by regular expression.
}
\examples{
\dontrun{
txt1 <- c("\\t(x1)a(aa2)a ", " bb(bb)")
strextract(txt1, "\\\\([^)]*\\\\)")
txt2 <- c("  Ben Franklin and Jefferson Davis", "\\tMillard Fillmore")
strextract(txt2, "(?<first>[[:upper:]][[:lower:]]+)", perl = TRUE)
}
}
\author{
Jian Li <\email{rweibo@sina.com}>
}
\keyword{string}

