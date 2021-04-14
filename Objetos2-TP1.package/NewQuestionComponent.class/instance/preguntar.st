callbacks
preguntar
	"Ver bien como se agrega pregunta"

	| pregunta |
	tituloPregunta ifEmpty: [ ^ self ].
	descripcionPregunta ifEmpty: [ ^ self ].
	topicosPregunta ifEmpty: [ ^ self ].
	pregunta := Pregunta new.
	pregunta titulo: tituloPregunta.
	pregunta descripcion: descripcionPregunta.
	topicosPregunta agregarTopicos: topicosPregunta.
	self session usuario agregarPregunta: pregunta.
	self answer