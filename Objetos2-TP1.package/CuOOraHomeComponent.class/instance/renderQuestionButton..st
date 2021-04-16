rendering
renderQuestionButton: aCanvas
	aCanvas
		paragraph: [ aCanvas anchor
				callback: [ self irAPregunta ];
				with: [ aCanvas button with: 'Ir a pregunta' ] ]