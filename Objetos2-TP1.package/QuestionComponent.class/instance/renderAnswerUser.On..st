rendering
renderAnswerUser: unUsuario On: aCanvas
	aCanvas span: 'Respuesta de '.
	aCanvas anchor
		callback: [ self goToProfile: unUsuario ];
		with: [ aCanvas span: unUsuario nombre asString ].
	(self session usuario siSoyYoOLoSigo: unUsuario)
		ifFalse: [ aCanvas anchor
				callback: [ self session usuario seguirUsuario: unUsuario ];
				with: [ aCanvas button: 'Seguir usuario' ] ]