running
setUp
| topicos1 |
	topicos1 := OrderedCollection new.
	topicos1 add: (Topico conNombre: 'Smalltalk' yDescripcion: '..').
	usuario1 := Usuario
		conNombre: 'Juan'
		conEmail: 'juan@gmail.com'
		yContraseña: 'contraseña'.
	usuario2 := Usuario
		conNombre: 'Pepe'
		conEmail: 'pepe@gmail.com'
		yContraseña: 'pepe123'.
	pregunta1 := Pregunta
		conTitulo: 'Desarrollo de Pagina web con Smalltalk(Seaside)'
		conDescripcion: 'Problemas con la implementacion de los componentes'
		conTopicos: topicos1
		yUsuario: usuario1.
	respuesta1 := Respuesta
		conPregunta: pregunta1
		unaDescripcion: '..'
		yUnUsuario: usuario2