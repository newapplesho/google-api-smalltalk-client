accessing
baseUrl
	^ ZnUrl new 
 		scheme: #https; 
    	host: ('{1}.googleapis.com' format: {self defaultApi}); 
 		yourself.