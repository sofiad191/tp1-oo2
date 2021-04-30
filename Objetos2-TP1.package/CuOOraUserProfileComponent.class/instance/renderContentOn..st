rendering
renderContentOn: aCanvas
	| p |
	p := 'Perfil de ' , self usuarioAMostrar nombre asString. super
		renderContentOn: aCanvas.
	aCanvas heading: p.
	aCanvas
		span:
			'Puntaje del usuario: '
				, self usuarioAMostrar calcularPuntajeUsuario asString.
	aCanvas break.
	(self session usuario siSoyYoOLoSigo: self usuarioAMostrar)
		ifFalse: [ aCanvas anchor
				callback: [ self session usuario seguirUsuario: self usuarioAMostrar ];
				with: [ aCanvas span: [ aCanvas button: 'Seguir usuario' ] ] ].
	aCanvas anchor
		callback: [ self answer ];
		with: [ aCanvas span: [ aCanvas button: 'Volver' ] ].
	self renderQuestionOnProfile: aCanvas
	"self renderAnswersOn: aCanvas"