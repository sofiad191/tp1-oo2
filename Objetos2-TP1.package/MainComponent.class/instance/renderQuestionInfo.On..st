rendering
renderQuestionInfo: unaPregunta On: aCanvas
	aCanvas span: 'Realizada por '.
	aCanvas anchor
		callback: [ self goToProfile:  unaPregunta usuario  ];
		with: [ aCanvas span: unaPregunta usuario nombre ].
	aCanvas
		span: '  |  Respuestas: ' , unaPregunta respuestas size asString