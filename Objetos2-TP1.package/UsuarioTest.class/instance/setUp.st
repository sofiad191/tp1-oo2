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

	us1 := Usuario conNombre: 'Juan' conEmail: 'juan@gmail.com' yContraseña: 'contraseña'.
	us2 := Usuario conNombre: 'Pepe' conEmail: 'pepe@gmail.com' yContraseña: 'pepe123'.
	us3 := Usuario conNombre: 'Sofia' conEmail: 'sofia@gmail.com' yContraseña: 'sofia123'.
	us1 seguirUsuario: us2.
	us2 seguirUsuario: us3.
	us3 seguirUsuario: us1.
	top1 := Topico conNombre: 'Smalltalk' yDescripcion: ''.
	top2 := Topico conNombre: 'Javascript' yDescripcion: ''.
	top3 := Topico conNombre: 'Paginas web' yDescripcion: ''.
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
	colec1 := top1 nombre , ',' , top3 nombre.
	colec2 := top2 nombre , ',' , top3 nombre.
	colec3 := top1 nombre , ',' , top2 nombre.

	"colec1 := top1 nombre , ',' , top3 nombre.
	colec2 := top2 nombre , ',' , top3 nombre.
	colec3 := top1 nombre , ',' , top2 nombre"
	preg1 := Pregunta
		conTitulo: 'Desarrollo de Pagina web con Smalltalk(Seaside)'
		conDescripcion: 'Problemas con la implementacion de los componentes'
		conTopicos: colec1
		yUsuario: us1.
	us1 agregarPregunta: preg1.
	preg2 := Pregunta
		conTitulo: 'Desarrollo de Pagina web con Javacript'
		conDescripcion: 'Como empezar'
		conTopicos: colec2
		yUsuario: us2.
	us2 agregarPregunta: preg2.
	preg3 := Pregunta
		conTitulo: 'Similitudes entre JavaScript y Smalltalk'
		conDescripcion: 'Que tienen en comun y que beneficios trae?'
		conTopicos: colec3
		yUsuario: us3.
	us3 agregarPregunta: preg3.
	res1 := Respuesta
		conPregunta: preg1
		unaDescripcion: 'Lee el libro'
		yUnUsuario: us3.
	us3 agregarRespuesta: res1.
	res2 := Respuesta
		conPregunta: preg2
		unaDescripcion: '...'
		yUnUsuario: us1.
	us1 agregarRespuesta: res2.
	res3 := Respuesta
		conPregunta: preg3
		unaDescripcion: 'No'
		yUnUsuario: us2.
	us2 agregarRespuesta: res3