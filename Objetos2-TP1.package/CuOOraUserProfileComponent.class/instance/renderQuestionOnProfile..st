rendering
renderQuestionOnProfile: aCanvas
	aCanvas
		div: [ self usuarioAMostrar preguntas
				do: [ :each | 
					self renderSingleQuestion: each On: aCanvas.
					aCanvas horizontalRule ] ]