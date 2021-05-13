rendering
renderSingleQuestion: aQuestion On: aCanvas
	aCanvas
		paragraph: [ aCanvas anchor
				callback: [ self goToQuestion: aQuestion ];
				with: [ aCanvas heading level3 with: aQuestion titulo ].
			aCanvas span: 'Topicos: '.
			aCanvas break.
			aCanvas span: [ aQuestion topicos do: [ :top | top nombre ] ].
			aCanvas
				span: [ aQuestion topicos
						do: [ :each | 
							aCanvas span: ' ' , each nombre , ' '.
							(self session usuario siSigoElTopico: each)
								ifFalse: [ aCanvas anchor
										callback: [ self session usuario agregarTopicoDeInteres: each ];
										with: [ aCanvas button: 'Seguir Topico' ] ] ] ] ].
	self renderQuestionInfo: aQuestion On: aCanvas.
	aCanvas break.
	self renderVotesOn: aCanvas fromPublication: aQuestion.
	aCanvas break.
	self renderVotesButtonOn: aCanvas withPublication: aQuestion 