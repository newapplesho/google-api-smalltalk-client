accessing
client
	^ client ifNil: [ client := CloudVisionClient new ]