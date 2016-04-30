action
value
	| responseJson exception |
	
	responseJson := (NeoJSONReader on: self response contents readStream)
			mapClass: NeoJSONObject ;
			propertyNamesAsSymbols: true;
			next.

	self response isSuccess 
		ifTrue:[^ responseJson ].
			
 	exception := CloudVisionException new.
	exception properties: responseJson.
	exception signal.