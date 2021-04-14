rendering
renderQuestionsOn: aCanvas
	aCanvas heading
		level: 2;
		with: 'Preguntas'.
	aCanvas
		unorderedList: [ self session usuario obtenerPreguntasRelevantes 
				do: [ :each | aCanvas listItem: each nombre ] ].
	aCanvas anchor
		callback: [ self createNewQuestion ];
		with: [ aCanvas button: 'Agregar una nueva pregunta' ]