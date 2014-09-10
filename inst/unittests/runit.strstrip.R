
test.strstrip <- function() {
	str1 <- strstrip(" \n\thaha\t")
	checkEquals(str1, "haha")
}
