operations
agregarPreguntaConTitulo: unTitulo yDescripcion: unaDescripcion
	"devuelve ^unaPregunta ?
	ESTO: tiene que si o si tener un topico o mas. no me queda claro como hacerlo.. quizas pensarlo como lo ejecuta la interfaz"

	| unaPregunta |
	unaPregunta := Pregunta new.
	unaPregunta titulo: unTitulo.
	unaPregunta descripcion: unaDescripcion.
	preguntas add: unaPregunta