rendering
renderButtonsOn: aCanvas
	self renderSignInButtonOn: aCanvas.
	aCanvas horizontalRule.
	aCanvas paragraph: 'No tenés una cuenta?'.
	self renderSignUpButtonOn: aCanvas