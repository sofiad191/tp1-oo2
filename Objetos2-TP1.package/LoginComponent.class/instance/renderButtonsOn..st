rendering
renderButtonsOn: aCanvas
	self renderSignInButtonOn: aCanvas.
	aCanvas horizontalRule.
	aCanvas paragraph: 'No tenes una cuenta?'.
	self renderSignUpButtonOn: aCanvas