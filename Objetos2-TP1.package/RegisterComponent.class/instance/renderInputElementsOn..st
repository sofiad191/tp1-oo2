rendering
renderInputElementsOn: aCanvas
	aCanvas label: 'Nombre'.
	aCanvas paragraph: [ aCanvas textInput on: #nombre of: self ].
	super renderInputElementsOn: aCanvas