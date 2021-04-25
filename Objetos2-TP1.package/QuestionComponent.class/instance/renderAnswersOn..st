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
					self renderVotesOn: aCanvas fromQuestion: each.
					aCanvas break.
					aCanvas anchor
						callback: [ self session usuario agregarVotoConEstado: true aPublicacion: each ];
						with: [ aCanvas button: 'Like' ].
					aCanvas anchor
						callback:
								[ self session usuario agregarVotoConEstado: false aPublicacion: each ];
						with: [ aCanvas button: 'Dislike' ].
					aCanvas break.
					aCanvas horizontalRule.
					 aCanvas break ] ]