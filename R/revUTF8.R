
##' Revert UTF-8 string to Chinese character.
##' 
##' @title Revert UTF-8 string to Chinese character.
##' @param string A character vector.
##' @param utype UTF-8 string type, the default is R type, such as "<U+XXXX>".
##' @return A character vector.
##' @author Jian Li <\email{rweibo@@sina.com}>
##' @examples \dontrun{
##' revUTF8("1<U+4E8C>3<U+56DB>5")
##' }

revUTF8 <- function(string, utype = "R")
{
	string <- .verifyChar(string)
	utype = match.arg(utype)
	if (length(string)  == 1) {
		str1 <- strsplit(string, "<U\\+[0-9A-Za-z][0-9A-Za-z][0-9A-Za-z][0-9A-Za-z]>")[[1]]
		str2 <- c(gsub("<U\\+|>", "", strextract(string, "<U\\+[^>]*>")[[1]]), "")
		str2 <- intToUtf8(as.hexmode(str2), multiple = TRUE)
		length(str1) <- length(str2) <- max(length(str1), length(str2))
		str1[is.na(str1)] <- ""
		str2[is.na(str2)] <- ""
		OUT <- paste(str1, str2, sep = "", collapse = "")
	} else {
		OUT <- as.vector(sapply(string, revUTF8, utype))
	}
	return(OUT)
}

