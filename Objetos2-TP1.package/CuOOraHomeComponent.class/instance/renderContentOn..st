rendering
renderContentOn: aCanvas
	aCanvas heading: 'Bienvenido ' , self session usuario nombre.
	self renderQuestionsOn: aCanvas.
	aCanvas horizontalRule.
	self renderLogoutButtonOn: aCanvas