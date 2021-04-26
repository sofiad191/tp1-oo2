tests
testEliminarPregunta
	| res |
	self assert: preg1 respuestas size equals: 0.
	res := Respuesta conPregunta: preg1  unaDescripcion: 'Lee el libro' yUnUsuario: us2 .
	us2 agregarRespuesta: res.
	preg1 agregarRespuesta: res.
	self assert: preg1 respuestas size equals: 1.
	self assert: preg1 topicos size equals: 1.
	self assert: (preg1 respuestas includes: res).
	self assert: res usuario equals: us2.
	self assert: preg1 usuario equals: us1.
	self assert: (us1 preguntas includes: preg1).
	"preg1 eliminarPregunta.
	self deny: (us1 preguntas includes: preg1).
	self assert: preg1 respuestas size equals: 0.
	self assert: us2 respuestas size equals: 0"

	"self assert: preg1 respuestas size equals: 0.
	self assert: preg1 topicos size equals: 0.
	self assert: (us2 respuestas size: 0)"