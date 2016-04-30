examples
example1
	"CloudVisionService example1."
	
	| annotateImageRequest cvImage cvFeature vision |
	cvImage := CloudVisionImage new. 
	cvImage content: self sampleImageContent1.
	cvFeature := CloudVisionFeature textDetection.
	cvFeature maxResults: 5.
	annotateImageRequest := CloudVisionAnnotateImageRequest new.
	annotateImageRequest image: cvImage.
	annotateImageRequest features: {cvFeature}.
	
	vision := CloudVisionService new.
	^ vision annotate: annotateImageRequest.