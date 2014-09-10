
##' Trim space of a string.
##' 
##' @title Trim space of a string.
##' @param string A character vector.
##' @param side Which side of the string to be trimed, 'both', 'left' or 'right'.
##' @return Trimed vector.
##' @author Jian Li <\email{rweibo@@sina.com}>
##' @keywords string
##' @examples \dontrun{
##' strstrip(c("\taaaa ", " bbbb    "))
##' }
##'

strstrip <- function(string, side = c("both", "left", "right")) {
	string <- .verifyChar(string)
	side <- match.arg(side)
	pattern <- switch(side, left = "^\\s+", right = "\\s+$", both = "^\\s+|\\s+$")
	OUT <- gsub(pattern, "", string)
	return(OUT)
}

