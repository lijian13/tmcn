
##' Set locale to Simplified Chinese.
##' 
##' @title Set locale to Simplified Chinese.
##' @param rev Whethet to set the locale back.
##' @return No results.
##' @author Jian Li <\email{rweibo@@sina.com}>

setchs <- function(rev = FALSE)
{
	if (identical(rev, FALSE)) {
		##ori.locale <- getOption("tmcn.oldlocale")
		#cur.locale <- Sys.getlocale("LC_CTYPE")
		#if (!cur.locale == "Chinese (Simplified)_People's Republic of China.936") {
		#	options(tmcn.oldlocale = cur.locale)
		#}
		Sys.setlocale(category = "LC_CTYPE", locale = "chs")
	} else {
		Sys.setlocale(category = "LC_CTYPE", locale = getOption("tmcn.oldlocale"))
	}
}

