
##' Run unit tests.
##'
##' Run the unit tests by RUnit package, and generate a html or text report. 
##' @title Run unit tests.
##' @param TestPath Path of the folder which contains the test scripts.
##' @param TestResult Name of the report file.
##' @param ResultsType 'html' or 'text'.
##' @return The results of function \code{\link{[RUnit]runTestSuite}}. 
##' @author Jian Li <\email{rweibo@@sina.com}>
##' @keywords debugging
##' @examples \dontrun{
##' x <- tmcnTest(TestResult = "tmcn_tests")
##' summary(x)
##' }
##'

tmcnTest <- function(TestPath = system.file(package="tmcn", "unittests"), 
		TestResult = NULL, ResultsType = c("html", "text"))
{
	if(!require("RUnit", quietly = TRUE)) stop("There is no 'RUnit' package!")
	TestPath <- normalizePath(TestPath, winslash = "/", mustWork = TRUE)
	ResultsType <- match.arg(ResultsType)
	if (!exists(".tmcnTestEnv", envir = .GlobalEnv)) assign(".tmcnTestEnv", new.env(), envir = .GlobalEnv)
	assign("TestPath", TestPath, envir = .tmcnTestEnv)
	TestSuite <- defineTestSuite("tmcn tests", dirs = TestPath, testFileRegexp = "^runit\\..+\\.[rR]$")
	OUT <- runTestSuite(TestSuite)
	if(!is.null(TestResult)) {
		TestResult <- paste(gsub(paste("\\.", ResultsType, sep = ""), "", 
						TestResult, ignore.case = TRUE), ResultsType, sep = ".")
		if (ResultsType == "html") printHTMLProtocol(OUT, fileName = TestResult)
		if (ResultsType == "text") printTextProtocol(OUT, fileName = TestResult)
	} 
	if (exists(".tmcnTestEnv", envir = .GlobalEnv)) rm(.tmcnTestEnv, envir = .GlobalEnv)
	return(OUT)
}



