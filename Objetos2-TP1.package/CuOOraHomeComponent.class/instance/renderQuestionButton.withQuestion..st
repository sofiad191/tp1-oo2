rendering
renderQuestionButton: aCanvas withQuestion: unaPregunta 
	aCanvas
		paragraph: [ aCanvas anchor
				callback: [ self goToQuestion: unaPregunta ];
				with: [ aCanvas button with: 'Ir a pregunta' ] ]