accessing
url: aUrlString
	self content: (ZnBase64Encoder new encode: aUrlString asUrl retrieveContents)