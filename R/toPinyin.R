
##' Convert a chinese text to pinyin format.
##' 
##' @title Convert a chinese text to pinyin format.
##' @param string A character vector.
##' @param capitalize Whether to capitalize the first letter of each word. 
##' @return A character vector in pinyin format.
##' @author Jian Li <\email{rweibo@@sina.com}>
##' @keywords string
##' @examples \dontrun{
##' toPinyin("the quick red fox jumps over the lazy brown dog")
##' }
##'

toPinyin <- function(string, capitalize = FALSE) {
	string <- .verifyChar(string)
	if (!exists(".pinyinEnv", env = .tmcnEnv)) {
		curEnv <- environment()
		data(GBK, envir = curEnv)
		assign(".pinyinEnv", createHashmapEnv(GBK$GBK, GBK$py0), envir = .tmcnEnv)
	}
	OUT <- strsplit(string, split = "")
	OUT <- lapply(OUT, FUN = function(X) 
				sapply(X, FUN = function(Y) {
							res <- Y
							try(res <- as.character(get(Y, envir = get(".pinyinEnv", env = .tmcnEnv))), silent = TRUE)
							res
						}
				)
	)
	if (capitalize) OUT <- lapply(OUT, strcap)
	OUT <- sapply(OUT, FUN = function(X) paste(X, collapse = ""))
	return(OUT)
}

