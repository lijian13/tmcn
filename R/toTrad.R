
##' Convert a chinese text from simplified to traditional characters and vice versa.
##' 
##' @title Convert a Chinese text from simplified to traditional characters and vice versa.
##' @param string A Chinese string vector.
##' @param rev Reverse. TRUE means traditional to simplified. Default is FALSE.
##' @return Converted vectors.
##' @author Jian Li <\email{rweibo@@sina.com}>

toTrad <- function(string, rev = FALSE)
{
	string <- .verifyChar(string)
	string <- toUTF8(string)
	if (!exists("SIMTRA", envir = .tmcnEnv)) data(SIMTRA, envir = .tmcnEnv)
	transDf <- get("SIMTRA", envir = .tmcnEnv)
	if (rev) {
		OUT <- chartr(transDf$Tra, transDf$Sim, string)
	} else {
		OUT <- chartr(transDf$Sim, transDf$Tra, string)
	}
		
	return(OUT)
}

