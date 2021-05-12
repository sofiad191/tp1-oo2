rendering
renderAnswersOn: aCanvas
	aCanvas heading
		level: 3;
		with: 'Respuestas'.
	self renderAnswerQuestionButtonOn: aCanvas.
	aCanvas break.
	aCanvas
		unorderedList: [ pregunta respuestas
				do: [ :each | 
					self renderAnswerUser: each usuario On: aCanvas.
					aCanvas break.
					aCanvas paragraph: each texto.
					self renderVotesOn: aCanvas fromPublication: each.
					aCanvas break.
					self renderVotesButtonOn: aCanvas withPublication: each.
					aCanvas break.
					aCanvas horizontalRule.
					aCanvas break ] ]