rendering
renderQuestionFromTopicOn: aCanvas
	aCanvas
		div: [ 
			self topicoAMostrar preguntas
				do: [ :each | 
					self renderSingleQuestion: each On: aCanvas.
					aCanvas horizontalRule ] ]