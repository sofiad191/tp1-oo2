rendering
renderUserOn: aCanvas
	aCanvas listItem: pregunta usuario nombre.
	aCanvas anchor
		callback: [ self seguirUsuario: (pregunta usuario nombre) ];
		with: [ aCanvas button: 'Seguir usuario' ]