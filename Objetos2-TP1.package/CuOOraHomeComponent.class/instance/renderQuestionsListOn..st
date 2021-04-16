rendering
renderQuestionsListOn: aCanvas
	aCanvas heading
		level: 2;
		with: 'Ultimas Preguntas'.
	aCanvas anchor
		callback: [ self createNewQuestion ];
		with: [ aCanvas button: 'Agregar una nueva pregunta' ].
	self renderQuestionOn: aCanvas