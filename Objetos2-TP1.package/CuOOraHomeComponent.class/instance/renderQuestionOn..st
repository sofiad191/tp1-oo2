rendering
renderQuestionOn: aCanvas
	^ aCanvas
		unorderedList: [ self session usuario obtenerPreguntasRelevantes
				do: [ :each | 
					aCanvas listItem: each titulo.
					self renderQuestionButton: aCanvas withQuestion: each. 
					aCanvas listItem: each usuario nombre.
					aCanvas listItem: [ each topicos do: [ :top | [ top nombre ] ] ].
					aCanvas listItem: each cantidadLikes.
					aCanvas listItem: each cantidadDislikes.
					aCanvas anchor
						callback: [ self session usuario agregarVotoConEstado: true aPublicacion: each ];
						with: [ aCanvas button: 'Like' ].
					aCanvas anchor
						callback:
								[ self session usuario agregarVotoConEstado: false aPublicacion: each ];
						with: [ aCanvas button: 'Dislike' ].
					aCanvas break.
					aCanvas break ] ]