rendering
renderContentOn: aCanvas
super renderContentOn: aCanvas.
aCanvas heading
		level: 2;
		with: 'Ultimas preguntas '.
aCanvas anchor
		callback: [ self call: NewQuestionComponent new ];
		with: [aCanvas button: 'Agregar nueva pregunta' ].
self renderQuestionOnHome: aCanvas.
	
aCanvas horizontalRule.

self renderUsersOn: aCanvas.
