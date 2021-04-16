rendering
renderAnswersOn: aCanvas
	aCanvas heading
		level: 2;
		with: 'Respuestas'.
	aCanvas anchor
		callback: [ self createNewAnswer ];
		with: [ aCanvas button: 'Agregar una nueva respuesta' ].
	aCanvas
		unorderedList: [ pregunta respuestas
				do: [ :each | 
					aCanvas listItem: each texto.
					aCanvas listItem: each usuario nombre.
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