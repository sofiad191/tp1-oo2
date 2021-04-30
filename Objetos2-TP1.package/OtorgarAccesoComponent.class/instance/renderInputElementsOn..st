rendering
renderInputElementsOn: aCanvas
	aCanvas label: 'Email'.
	aCanvas
		paragraph: [ aCanvas textInput
				placeholder: 'ejemplo@cuoora.com';
				on: #email of: self ].
	aCanvas label: 'Contraseña'.
	aCanvas
		paragraph: [ aCanvas passwordInput
				placeholder: 'cuoora123';
				on: #contraseña of: self ]