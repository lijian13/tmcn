
##' Get the current encoding of the locale.
##' 
##' @title Get the current encoding of the locale.
##' @return Character of encoding.
##' @author Jian Li <\email{rweibo@@sina.com}>

getCharset <- function()
{
	charsetChar <- localeToCharset(locale = Sys.getlocale("LC_CTYPE"))
	iconvList <- iconvlist()
	iconvId <- which(iconvList == charsetChar)
	if (length(iconvId) == 0) iconvId <- which(toupper(iconvList) == toupper(charsetChar))[1]
	if (length(iconvId) == 0) return("")
	OUT <- iconvList[iconvId]
	return(OUT)
}

