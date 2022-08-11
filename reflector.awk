func getField(rowLen) {
	if (rowLen == 4)
		return $3
	else
		return $2
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

