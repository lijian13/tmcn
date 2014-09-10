
##' Pad a string to a specified length with a padding character.
##' 
##' @title Pad a string to a specified length with a padding character.
##' @param string A character vector.
##' @param width The number of characters of the string after padding. 
##' @param side Which side to pad.
##' @param pad The padding character.
##' @return A character vector after padding.
##' @author Jian Li <\email{rweibo@@sina.com}>
##' @keywords string
##' @examples \dontrun{
##' strpad(1:5, width = 4, pad = "0")
##' }
##'

strpad <- function(string, width = 0, side = c("left", "right", "both"), pad = " ") {
	string <- .verifyChar(string)
	side <- match.arg(side)
	width <- suppressWarnings(as.integer(width))
	width[is.na(width)] <- 0
	pad <- .verifyChar(pad)
	stopifnot(length(pad) == 1)
	stopifnot(nchar(pad) == 1)
	
	n.char <- nchar(string)
	n.left <- switch(side, 
			left = rep(width - n.char, length.out = length(string)), 
			right = rep(0, length.out = length(string)), 
			both = ceiling(rep(width - n.char, length.out = length(string)) / 2)
	)
	n.right <- switch(side, 
			left = rep(0, length.out = length(string)), 
			right = rep(width - n.char, length.out = length(string)), 
			both = floor(rep(width - n.char, length.out = length(string)) / 2)
	)
	n.left <- pmax(n.left, 0)
	n.right <- pmax(n.right, 0)
	OUT <- paste0(sapply(n.left, FUN = function(X) paste0(rep(pad, times=X), collapse = "")),
			string,
			sapply(n.right, FUN = function(X) paste0(rep(pad, times=X), collapse = "")))
	return(OUT)
}

