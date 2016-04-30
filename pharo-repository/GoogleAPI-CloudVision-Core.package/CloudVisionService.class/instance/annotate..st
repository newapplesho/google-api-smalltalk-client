private
annotate: aJsonObject
	| url requestBody  |
	url := self baseUrl.
	url addPathSegments: { self apiVersion. 'images:annotate'}.
	url queryAt: 'key' add: self settings apiKey.
	requestBody :=	String streamContents: [:str | (NeoJSONObject new at:'requests' put: {aJsonObject}; yourself) printOn: str ].
	^ self client httpPost: url contents: ((ZnEntity with: requestBody) contentType: 'application/json')