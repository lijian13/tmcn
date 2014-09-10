
##' Create an environment for hash mapping.
##' 
##' @title Create an environment for hash mapping.
##' @param key A character vector of searching key.
##' @param value A character vector of searching value.
##' @return An environment.
##' @author Jian Li <\email{rweibo@@sina.com}>

createHashmapEnv <- function(key, value)
{
	key <- .verifyChar(key)
	value <- .verifyChar(value)
	if (length(key) != length(value)) stop("Length of 'key' and 'value' are not same!")
	e <- new.env(hash = TRUE, size = length(key))
	for (ikey in 1:length(key)) {
		assign(x = key[ikey], value = value[ikey], envir = e)
	}
	return(e)
}

