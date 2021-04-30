rendering
renderContentOn: aCanvas
	super renderContentOn: aCanvas.
	aCanvas heading: 'Perfil de ' , self usuario nombre.
	aCanvas
		span: 'Puntaje del usuario: ' , self usuario calcularPuntajeUsuario asString.
	aCanvas break.
	(self session usuario siSoyYoOLoSigo: self usuario)
		ifFalse: [ aCanvas anchor
				callback: [ self session usuario seguirUsuario: self usuario ];
				with: [ aCanvas span: [ aCanvas button: 'Seguir usuario' ] ] ].
	aCanvas anchor
		callback: [ self answer ];
		with: [ aCanvas span: [ aCanvas button: 'Volver' ] ].
	self renderQuestionOnProfile: aCanvas.
	self renderAnswersOn: aCanvas