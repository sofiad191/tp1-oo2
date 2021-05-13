running
setUp
	| coleccion1 |
	coleccion1 := OrderedCollection new.
	coleccion1 add: (Topico conNombre: 'oo2' yDescripcion: '..').
	usuario1 := Usuario
		conNombre: 'Sofia'
		conEmail: 'sofia@gmail.com'
		yContraseña: 'hola123'.
	usuario2 := Usuario
		conNombre: 'Benito'
		conEmail: 'benito@gmail.com'
		yContraseña: 'chau1234'.
	publicacion1 := Pregunta
		conTitulo: 'Trabajo Practico 1'
		conDescripcion: 'Para que me sirven los tests?'
		conTopicos: coleccion1
		yUsuario: usuario1.
	publicacion2 := Respuesta
		conPregunta: publicacion1
		unaDescripcion: 'Se realizan los tests para verificar que funcione el codigo'
		yUnUsuario: usuario2