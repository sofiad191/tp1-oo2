rendering
renderContentOn: aCanvas
	self renderSearchFormOn: aCanvas.
	self renderSearchResultsOn: aCanvas.
	aCanvas horizontalRule.
	aCanvas anchor
		callback: [ self answer ];
		with: [ aCanvas button: 'Finalizar' ]