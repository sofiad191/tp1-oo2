rendering
renderAnswerUser: unUsuario On: aCanvas
	aCanvas span: 'Respuesta de '.
	aCanvas anchor
		callback: [ self goToProfile: unUsuario ];
		with: [ aCanvas span: unUsuario nombre ].
	(self session usuario puedeAgregar: unUsuario)
		ifTrue: [ aCanvas anchor
				callback: [ self session usuario seguirUsuario: unUsuario  ];
				with: [ aCanvas button: 'Seguir usuario' ] ]