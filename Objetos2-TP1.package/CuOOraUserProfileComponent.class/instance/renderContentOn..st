rendering
renderContentOn: aCanvas
	aCanvas heading
		level: 1;
		with: 'CuOOra '.
	aCanvas horizontalRule.
	aCanvas heading: 'Perfil de ' , self usuario nombre.
	aCanvas
		span:
			'Puntaje del usuario: ' , self usuario calcularPuntajeUsuario asString.
	aCanvas break.
	(self session usuario puedeAgregar: self usuario)
		ifTrue: [ aCanvas anchor
				callback: [ self session usuario seguirUsuario: self usuario ];
				with: [ aCanvas span: [ aCanvas button: 'Seguir usuario' ] ] ].
	aCanvas anchor
		callback: [ self answer ];
		with: [ aCanvas span: [ aCanvas button: 'Volver' ] ].
	self renderQuestionOn: aCanvas.
	self renderAnswersOn: aCanvas