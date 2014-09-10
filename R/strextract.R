
##' Extract matched substrings by regular expression.
##' 
##' @title Extract matched substrings by regular expression.
##' @param string A character vector.
##' @param pattern A character string containing a regular expression 
##'        to be matched in the given character vector.
##' @param invert A logical value: if TRUE, extract the non-matched substrings.
##' @param ignore.case If FALSE, the pattern matching is case sensitive and if TRUE, 
##'        case is ignored during matching.
##' @param perl A logical value. Should perl-compatible regexps be used?
##' @param useBytes A logical value. If TRUE the matching is done byte-by-byte 
##'        rather than character-by-character.
##' @return A character vector with the matched or non-matched substrings.
##' @author Jian Li <\email{rweibo@@sina.com}>
##' @keywords string
##' @examples \dontrun{
##' txt1 <- c("\t(x1)a(aa2)a ", " bb(bb)")
##' strextract(txt1, "\\([^)]*\\)")
##' txt2 <- c("  Ben Franklin and Jefferson Davis", "\tMillard Fillmore")
##' strextract(txt2, "(?<first>[[:upper:]][[:lower:]]+)", perl = TRUE)
##' }
##'

strextract <- function(string, pattern, invert = FALSE,
		ignore.case = FALSE, perl = FALSE, useBytes = FALSE) 
{
	string <- .verifyChar(string)
	expr <- gregexpr(pattern = pattern, text = string, ignore.case = ignore.case, 
			perl = perl, fixed = FALSE, useBytes = useBytes)
	OUT <- regmatches(x = string, m = expr, invert = invert)
	return(OUT)
}

