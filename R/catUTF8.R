
##' Print the UTF-8 codes of a string.
##' 
##' @title Print the UTF-8 codes of a string.
##' @param string A character vector.
##' @return No results.
##' @author Jian Li <\email{rweibo@@sina.com}>

catUTF8 <- function(string)
{
	string <- toUTF8(string)
	if (length(string)  == 1) {
		old.ctype <- Sys.getlocale("LC_CTYPE")
		Sys.setlocale(category = "LC_CTYPE", locale = "English_United Kingdom.1252")
		try({
					conn <- textConnection(string, open = "r", local = FALSE, encoding = NULL)
					OUT <- readLines(conn, encoding = "UTF-8")
					close(conn)
				}, silent = TRUE)
		Sys.setlocale(category = "LC_CTYPE", locale = old.ctype)
		
		str1 <- strsplit(OUT, "<U\\+[0-9A-Z][0-9A-Z][0-9A-Z][0-9A-Z]>")[[1]]
		str2 <- c(gsub("<U\\+|>", "", strextract(OUT, "<U\\+[^>]*>")[[1]]), "")
		for(i in 1:length(str1)) {
			cat(str1[i])
			if (nchar(str2[i]) == 4) cat("\\u")
			cat(str2[i])
		}
		cat("\n")
	} else {
		OUT <- as.vector(sapply(string, catUTF8))
	}
	
	invisible(OUT)
}

