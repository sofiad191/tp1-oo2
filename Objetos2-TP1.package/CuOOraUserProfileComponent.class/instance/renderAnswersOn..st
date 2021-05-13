rendering
renderAnswersOn: aCanvas
	aCanvas
		div: [ aCanvas heading
				level: 3;
				with: 'Respuestas de ' , self usuario nombre.
			self usuario respuestas
				do: [ :each | 
					aCanvas
						paragraph: [ aCanvas anchor
								callback: [ self goToQuestion: each pregunta ];
								with: [ aCanvas heading level4 with: each pregunta titulo ].
							aCanvas span: each texto.
							aCanvas break.
							aCanvas span: 'Realizada por ' , self usuario nombre.
							aCanvas break.
							self renderVotesOn: aCanvas fromPublication: each.
							aCanvas break.
							self renderVotesButtonOn: aCanvas withPublication: each.
							aCanvas horizontalRule ] ] ]