
##' Set locale to Traditional Chinese.
##' 
##' @title Set locale to Simplified Chinese.
##' @param rev Whethet to set the locale back.
##' @return No results.
##' @author Jian Li <\email{rweibo@@sina.com}>

setcht <- function(rev = FALSE)
{
	if (identical(rev, FALSE)) {
		##ori.locale <- getOption("tmcn.oldlocale")
		#cur.locale <- Sys.getlocale("LC_CTYPE")
		#if (!cur.locale == "Chinese (Traditional)_Taiwan.950") {
		#	options(tmcn.oldlocale = cur.locale)
		#}
		Sys.setlocale(category = "LC_CTYPE", locale = "cht")
	} else {
		Sys.setlocale(category = "LC_CTYPE", locale = getOption("tmcn.oldlocale"))
	}
}

