
##' To capitalize every first letter of a word.
##' 
##' @title Mixed case capitalizing.
##' @param string A character vector.
##' @param strict Whether strict. 
##' @return A character vector with the first letter of each word capitalized.
##' @author Jian Li <\email{rweibo@@sina.com}>
##' @keywords string
##' @examples \dontrun{
##' strcap("the quick red fox jumps over the lazy brown dog")
##' }
##'

strcap <- function(string, strict = FALSE) {
	string <- .verifyChar(string)
	cap <- function(s) paste(toupper(substring(s, 1, 1)),
				{s <- substring(s, 2); if(strict) tolower(s) else s},
				sep = "", collapse = " ")
	idxspace <- which(!nzchar(strstrip(string)))
	OUT <- sapply(strsplit(string, split = " "), cap, USE.NAMES = !is.null(names(string)))
	if (length(idxspace) > 0) OUT[idxspace] <- string[idxspace]
	return(OUT)
}

