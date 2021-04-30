rendering
renderContentOn: aCanvas
	aCanvas heading
		level: 1;
		with: 'CuOOra '.
	aCanvas horizontalRule.
self renderHomeButton: aCanvas.
self renderProfileButton: aCanvas.
self renderLogoutButtonOn: aCanvas.
aCanvas horizontalRule 