
##' Get the word frequency data.frame.
##' 
##' @title Get the word frequency data.frame.
##' @param string A character vector to calculate words frequency.
##' @param onlyCN Keep only chinese words. 
##' @param stopwords A character vector of stop words.
##' @param useStopDic Whether to use the default stop words.
##' @return A data.frame.
##' @author Jian Li <\email{rweibo@@sina.com}>
##' @examples \dontrun{
##' getWordFreq(c("a", "a", "b", "c"), onlyCN = FALSE)
##' }

getWordFreq <- function(string, onlyCN = TRUE, stopwords = NULL, useStopDic = FALSE)
{
	string <- .verifyChar(string)
	stopwords <- .verifyChar(stopwords)
	if (identical(useStopDic, TRUE)) {
		stopwords <- union(stopwords, 
				readLines(system.file("dic", "stopwords.txt", package = "tmcn"), encoding = "UTF-8"))
	}
	
	if (onlyCN) {
		string.vec <- gsub("[^\u4e00-\u9fa5]", "", string)
	} else {
		#string.vec <- gsub("^[^\u4e00-\u9fa5A-z]*$", "", string)
		string.vec <- gsub("[^\u4e00-\u9fa5A-Za-z]", "", string)
	}
	string.vec <- string.vec[nzchar(string.vec)]
	string.vec <- string.vec[!string.vec %in% stopwords]
	
	if (length(string.vec) == 0) return(data.frame(Word = character(), Freq = integer(), stringsAsFactors = FALSE))
	
	string.table <- table(string.vec)
	OUT <- data.frame(Word = names(string.table), Freq = as.vector(string.table), stringsAsFactors = FALSE)
	
	return(OUT)
}

