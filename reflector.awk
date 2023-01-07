func getField(rowLen) {
	return $(rowLen - 1)
}

{
	field = getField(NF)

	if (country != "")
		country = country "," field
	else
		country = field
}

END {
	print country
}

