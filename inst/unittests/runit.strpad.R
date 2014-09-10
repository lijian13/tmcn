
test.strpad <- function() {
	str1 <- strpad(1, width = 4, side = "left", pad = "0")
	str2 <- strpad(1, width = 4, side = "right", pad = "0")
	str3 <- strpad(1, width = 4, side = "both", pad = "0")
	checkEquals(str1, "0001")
	checkEquals(str2, "1000")
	checkEquals(str3, "0010")
}
