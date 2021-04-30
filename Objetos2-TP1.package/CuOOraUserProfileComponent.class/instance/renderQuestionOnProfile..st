rendering
renderQuestionOnProfile: aCanvas
	aCanvas
		div: [ self session usuario preguntas
				do: [ :each | self renderSingleQuestion: each On: aCanvas.
							aCanvas horizontalRule ] ] 