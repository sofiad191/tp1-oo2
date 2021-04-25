rendering
renderQuestionOn: aCanvas
	aCanvas
		div: [ aCanvas heading level:3; with: 'Preguntas de ' , self usuario nombre.
			self usuario preguntas
				do: [ :each | 
					aCanvas
						paragraph: [ aCanvas anchor
								callback: [ self call: (QuestionComponent conPregunta: each) ];
								with: [ aCanvas heading level3 with: each titulo ].
							aCanvas span: 'Topicos: '.
							aCanvas span: [ each topicos do: [ :top | top nombre ] ].
							aCanvas break.
							aCanvas
								span:
									'Realizada por ' , each usuario nombre , '  |  Respuestas: '
										, each respuestas size asString.
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