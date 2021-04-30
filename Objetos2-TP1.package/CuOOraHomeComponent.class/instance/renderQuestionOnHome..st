rendering
renderQuestionOnHome: aCanvas
	aCanvas
		div: [ self session usuario obtenerPreguntasRelevantes
				do: [ :each | 
					 self renderSingleQuestion: each On: aCanvas.
					aCanvas horizontalRule ] ]