rendering
renderUserOn: aCanvas
	aCanvas span: 'Pregunta de ' , pregunta usuario nombre , '  '.
	(self session usuario puedeAgregar: pregunta usuario)
		ifTrue: [ aCanvas anchor
				callback: [ self session usuario seguirUsuario: pregunta usuario ];
				with: [ aCanvas button: 'Seguir usuario' ] ].
