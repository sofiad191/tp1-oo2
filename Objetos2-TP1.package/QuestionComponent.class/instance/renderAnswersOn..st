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
						callback: [ each agregarLikeConUsuario: self session usuario];
						with: [ aCanvas button: 'Like' ].
					aCanvas anchor
						callback:
								[ each agregarDislikeConUsuario: self session usuario ];
						with: [ aCanvas button: 'Dislike' ].
					aCanvas break.
					aCanvas horizontalRule.
					aCanvas break ] ]