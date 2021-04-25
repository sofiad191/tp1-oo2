rendering
renderQuestionsListOn: aCanvas
	aCanvas heading
		level: 2;
		with: 'Ultimas Preguntas'.
	aCanvas anchor
		callback: [ self createNewQuestion ];
		with: [ aCanvas button: 'Agregar una nueva pregunta' ].
	aCanvas anchor
		callback: [ self goToProfile: self session usuario  ];
		with: [ aCanvas button: 'Ir a mi perfil' ].
	self renderQuestionOn: aCanvas