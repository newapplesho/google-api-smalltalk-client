baseline
baseline: spec 
	 <baseline>
	
	spec for: #common do: [
		spec package: 'Neo-JSON-Core' with: [
			spec repository: 'http://mc.stfx.eu/Neo'. ].
		spec 
			package: 'GoogleAPI-Core';
			package: 'GoogleAPI-CloudVision-Core' with: [ spec requires: #('GoogleAPI-Core') ];
			package: 'GoogleAPI-CloudVision-Model' with: [ spec requires: #('GoogleAPI-CloudVision-Core') ].
	].