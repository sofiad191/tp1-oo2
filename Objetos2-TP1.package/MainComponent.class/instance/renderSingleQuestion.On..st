rendering
renderSingleQuestion: aQuestion On: aCanvas
	aCanvas
		paragraph: [ aCanvas anchor
				callback: [ self goToQuestion: aQuestion ];
				with: [ aCanvas heading level3 with: aQuestion titulo ].
			aCanvas span: 'Topicos: '.
			aCanvas span: [ aQuestion topicos do: [ :top |  top nombre ] ].
			aCanvas break.
			self renderQuestionInfo: aQuestion On: aCanvas.
			aCanvas break.
			self renderVotesOn: aCanvas fromQuestion: aQuestion.
			aCanvas break.
			self renderVotesButton: aCanvas withQuestion: aQuestion ]