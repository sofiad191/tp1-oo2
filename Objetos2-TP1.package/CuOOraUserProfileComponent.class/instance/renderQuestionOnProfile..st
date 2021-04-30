rendering
renderQuestionOnProfile: aCanvas
	aCanvas
		div: [ aCanvas heading
				level: 3;
				with: 'Preguntas de ' , self usuario nombre.
			.self usuario preguntas
				do: [ :each | self renderSingleQuestion: each On: aCanvas.
							aCanvas horizontalRule ] ] 