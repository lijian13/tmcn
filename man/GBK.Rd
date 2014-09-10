\name{GBK}
\alias{GBK}
\docType{data}
\title{GBK character set}
\description{
GBK character set including some useful information.
}
\usage{data(GBK)}
\format{
  A data frame with 8 columns.
  \describe{
    \item{\code{GBK}}{Chinese characters in UTF-8.}
    \item{\code{py0}}{Unique Pinyin of each character.}
    \item{\code{py}}{Pinyin string of each character.}
    \item{\code{Radical}}{In Chinese, it means 'Bu Shou'.}
    \item{\code{Stroke_Num_Radical}}{In Chinese, it means the number of 'Bi Hua'.}
    \item{\code{Stroke_Order}}{In Chinese, it means 'Bi Shun'.}
    \item{\code{Structure}}{In Chinese, it means 'Zi Ti Jie Gou'.}
    \item{\code{Freq}}{Frequency of the character in Sogou news corpus from all sites between June and July 2012.}
  }
}

\author{
  Jian Li <\email{rweibo@sina.com}>
}
\references{
  \url{http://www.sogou.com/labs/dl/ca.html}
}
\keyword{datasets}
