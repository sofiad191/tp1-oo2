rendering
renderAnswerOn: aCanvas
	aCanvas heading
		level: 2;
		with: 'Respuestas'.
	aCanvas anchor
		callback: [ self createNewAnswer ];
		with: [ aCanvas button: 'Agregar una nueva respuesta' ]