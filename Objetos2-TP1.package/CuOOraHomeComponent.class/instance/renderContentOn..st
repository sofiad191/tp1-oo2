rendering
renderContentOn: aCanvas
	aCanvas heading
		level: 1;
		with: 'CuOOra '.
	aCanvas horizontalRule.
	self renderQuestionsListOn: aCanvas.
	
	self renderUsersOn: aCanvas.
	aCanvas horizontalRule.
	self renderLogoutButtonOn: aCanvas