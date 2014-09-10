
test.strextract <- function() {
	txt1 <- c("\t(x1)a(aa2)a ", " bb(bb)")
	str1 <- strextract(txt1, "\\([^)]*\\)")
	txt2 <- c("  Ben Franklin and Jefferson Davis", "\tMillard Fillmore")
	str2 <- strextract(txt2, "(?<first>[[:upper:]][[:lower:]]+)", perl = TRUE)
	
	checkEquals(str1[[2]], "(bb)")
	checkEquals(str2[[2]][1], "Millard")
}
