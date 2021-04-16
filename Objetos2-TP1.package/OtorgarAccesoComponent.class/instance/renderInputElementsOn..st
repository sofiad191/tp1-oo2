rendering
renderInputElementsOn: aCanvas
	aCanvas label: 'Email'.
	aCanvas paragraph: [ aCanvas textInput on: #email of: self ].
	aCanvas label: 'Contraseña'.
	aCanvas paragraph: [ aCanvas passwordInput on: #contraseña of: self ]