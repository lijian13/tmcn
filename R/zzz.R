# TODO: Add comment
# 
# Author: jli
###############################################################################

.onAttach <- function(libname, pkgname ){
	if (!exists(".tmcnEnv", envir = .GlobalEnv)) {
		assign(".tmcnEnv", new.env(), envir = .GlobalEnv)
	}
	options(tmcn.oldlocale = Sys.getlocale("LC_CTYPE"))
	packageStartupMessage( paste("# tmcn Version:", utils:::packageDescription("tmcn", fields = "Version")) )
}

.onUnload <- function(libpath) {
	rm(.tmcnEnv, envir = .GlobalEnv)
	library.dynam.unload("tmcn", libpath)
}
