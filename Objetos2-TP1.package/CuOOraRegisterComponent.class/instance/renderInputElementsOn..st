rendering
renderInputElementsOn: aCanvas
	aCanvas label: 'Nombre'.
	aCanvas
		paragraph: [ aCanvas textInput
				placeholder: 'Diego Torres';
				on: #nombre of: self;
				required].
	super renderInputElementsOn: aCanvas