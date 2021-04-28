rendering
renderUserOn: aCanvas
	aCanvas span: 'Pregunta de ' , pregunta usuario nombre , '  '.
	(self session usuario siSoyYoOLoSigo: pregunta usuario)
		ifFalse: [ aCanvas anchor
				callback: [ self session usuario seguirUsuario: pregunta usuario ];
				with: [ aCanvas button: 'Seguir usuario' ] ]