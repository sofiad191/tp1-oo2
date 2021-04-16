rendering
renderContentOn: aCanvas
	aCanvas heading
		level: 1;
		with: 'CuOOra '.
	aCanvas horizontalRule.
	self renderQuestionsOn: aCanvas.
	aCanvas horizontalRule.
	self renderUsersOn: aCanvas.
	aCanvas horizontalRule.
	self renderLogoutButtonOn: aCanvas