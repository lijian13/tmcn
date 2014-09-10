
##' Return Chinese stop words.
##' 
##' @title Return Chinese stop words.
##' @param stopwords A character vector of stop words.
##' @param useStopDic Whether to use the default stop words.
##' @return A vector of stop words.
##' @author Jian Li <\email{rweibo@@sina.com}>

stopwordsCN <- function(stopwords = NULL, useStopDic = TRUE)
{
	stopwords <- .verifyChar(stopwords)
	if (identical(useStopDic, TRUE)) {
		stopwords <- union(stopwords, 
				readLines(system.file("dic", "stopwords.txt", package = "tmcn"), encoding = "UTF-8"))
	}
	return(stopwords)
}

