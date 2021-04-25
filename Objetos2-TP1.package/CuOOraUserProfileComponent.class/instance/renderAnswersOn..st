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
								callback: [ self call: (QuestionComponent conPregunta: each) ];
								with: [ aCanvas heading level3 with: each pregunta titulo ].
							aCanvas span: each texto.
							aCanvas break.
							aCanvas span: 'Realizada por ' , self usuario nombre.
							aCanvas break.
							aCanvas
								span:
									each cantidadLikes asString , ' likes  |  '
										, each cantidadDislikes asString , ' dislikes'.
							aCanvas break.
							aCanvas anchor
								callback: [ self session usuario agregarVotoConEstado: true aPublicacion: each ];
								with: [ aCanvas button: 'Like' ].
							aCanvas anchor
								callback:
										[ self session usuario agregarVotoConEstado: false aPublicacion: each ];
								with: [ aCanvas button: 'Dislike' ].
							aCanvas horizontalRule ] ] ]