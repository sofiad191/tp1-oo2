rendering
renderQuestionOn: aCanvas
	aCanvas
		div: [ self session usuario obtenerPreguntasRelevantes
				 do: [ :each | 
					aCanvas
						paragraph: [ aCanvas anchor
								callback: [ self goToQuestion: each ];
								with: [ aCanvas heading level3 with: each titulo ].
							aCanvas span: 'Topicos: '.
							aCanvas span: [ each topicos do: [ :top | top nombre ] ].
							aCanvas break.
							self renderQuestionInfo: each On: aCanvas.
							aCanvas break.
							self renderVotesOn: aCanvas fromQuestion: each.
							aCanvas break.
							self renderVotesButton: aCanvas withQuestion: each.
							aCanvas horizontalRule ] ] ]