operations
agregarPreguntaConTitulo: unTitulo conDescripcion: unaDescripcion yTopicos: unosTopicos
	"devuelve ^unaPregunta ?
	ESTO: tiene que si o si tener un topico o mas. no me queda claro como hacerlo.. quizas pensarlo como lo ejecuta la interfaz"

	| unaPregunta |
	unaPregunta := Pregunta new.
	unaPregunta titulo: unTitulo.
	unaPregunta descripcion: unaDescripcion.
	unaPregunta
		topicos:
			(((unosTopicos asString substrings: ',')
				collect: [ :nom | [ Topico conNombre: nom yDescripcion: '' ] ]) asOrderedCollection).
	unaPregunta usuario: self.
	self agregarPregunta: unaPregunta.
	^ unaPregunta