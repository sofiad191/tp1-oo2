rendering
renderAnswerQuestionButtonOn: aCanvas
	aCanvas anchor
		callback: [ self createNewAnswer ];
		with: [  aCanvas button: 'Agregar una nueva respuesta' ] 