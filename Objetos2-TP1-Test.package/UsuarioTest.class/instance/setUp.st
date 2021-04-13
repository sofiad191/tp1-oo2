running
setUp
	"Tres usuarios: us1, us2, us3
	Tres topicos: top1, top2, top3
	Tres colecciones de topicos: colec1(1,3), colec2(2,3), colec(1,2)
	Tres preguntas: preg1(us1), preg2(us2), preg3(us3)
	Tres respuestas: res1(us3), res2(us1), res(us2)
	us1 sigue a: us2,us3 y: top1, top2, top3
	us2 sigue a: us3 y: top1, top3
	us3 sigue a: us1 y: top2, top3
	"

	us1 := Usuario conNombre: 'Juan' yContraseña: 'contraseña'.
	us2 := Usuario conNombre: 'Pepe' yContraseña: 'pepe123'.
	us3 := Usuario conNombre: 'Sofia' yContraseña: 'sofia123'.
	top1 := Topico
		conNombre: 'Smalltalk'
		yDescripcion: 'Lenguaje de Programacion'.
	top2 := Topico
		conNombre: 'JavaScript'
		yDescripcion: 'Lenguaje de programacion'.
	top3 := Topico
		conNombre: 'Paginas web'
		yDescripcion: 'Desarrollo de paginas web'.
	us1 agregarTopicoDeInteres: top1.
	us1 agregarTopicoDeInteres: top2.
	us1 agregarTopicoDeInteres: top3.
	us2 agregarTopicoDeInteres: top1.
	us2 agregarTopicoDeInteres: top3.
	us3 agregarTopicoDeInteres: top2.
	us3 agregarTopicoDeInteres: top3.
	colec1 := OrderedCollection new.
	colec2 := OrderedCollection new.
	colec3 := OrderedCollection new.
	colec1 add: top1.
	colec1 add: top3.
	colec2 add: top2.
	colec2 add: top3.
	colec3 add: top1.
	colec3 add: top2.
	preg1 := us1
		agregarPreguntaConTitulo: 'Desarrollo de Pagina web con Smalltalk(Seaside)'
		conDescripcion: 'Problemas con la implementacion de los componentes'
		yTopicos: colec1.
	preg2 := us2
		agregarPreguntaConTitulo: 'Desarrollo de Pagina web con Javacript'
		conDescripcion: 'Como empezar'
		yTopicos: colec2.
	preg3 := us3
		agregarPreguntaConTitulo: 'Similitudes entre JavaScript y Smalltalk'
		conDescripcion: 'Que tienen en comun y que beneficios trae?'
		yTopicos: colec3.
	res1 := us3 agregarRespuestaConTexto: 'Lee el libro' yPregunta: preg1.
	res2 := us1 agregarRespuestaConTexto: '...' yPregunta: preg2.
	res3 := us2 agregarRespuestaConTexto: 'Ninguna' yPregunta: preg3.
		us1 seguirUsuario: us2.
			us1 seguirUsuario: us3.
				us2 seguirUsuario: us3.
					us3 seguirUsuario: us1.
			