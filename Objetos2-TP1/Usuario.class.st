Class {
	#name : #Usuario,
	#superclass : #Object,
	#instVars : [
		'nombre',
		'contraseña',
		'fechaHoraCreacion',
		'usuariosSeguidos',
		'topicosDeInteres',
		'votos',
		'preguntas',
		'respuestas'
	],
	#category : #'Objetos2-TP1'
}

{ #category : #'as yet unclassified' }
Usuario class >> conNombre: unNombre yContraseña: unaContraseña [

^ self new 
	nombre: unNombre;
	contraseña: unaContraseña;
	fechaHoraCreacion: DateAndTime now;
	yourself
	
]

{ #category : #operations }
Usuario >> agregarPreguntaConTitulo: unTitulo yDescripcion: unaDescripcion [
	"devuelve ^unaPregunta ?
	ESTO: tiene que si o si tener un topico o mas. no me queda claro como hacerlo.. quizas pensarlo como lo ejecuta la interfaz"

	| unaPregunta |
	unaPregunta := Pregunta new.
	unaPregunta titulo: unTitulo.
	unaPregunta descripcion: unaDescripcion.
	preguntas add: unaPregunta
]

{ #category : #operations }
Usuario >> agregarRespuestaConTexto: unTexto [
"devuelve ^unaRepuesta ?"
	| unaRespuesta |
	unaRespuesta := Respuesta new.
	unaRespuesta texto: unTexto.
	respuestas add: unaRespuesta
	
	
]

{ #category : #operations }
Usuario >> agregarTopicoDeInteres: unTopico [
topicosDeInteres add: unTopico
]

{ #category : #operations }
Usuario >> calcularPuntajeUsuario [
	"probar "

	^ preguntas size * 20 + (respuestas size * 50)
		+
			(preguntas sumNumbers: [ :unaPregunta | unaPregunta calcularPuntaje ])
		+
			(respuestas
				sumNumbers: [ :unaRespuesta | unaRespuesta calcularPuntaje ])
]

{ #category : #accessing }
Usuario >> contraseña [
^contraseña
]

{ #category : #accessing }
Usuario >> contraseña: unaContraseña [
	contraseña := unaContraseña
]

{ #category : #operations }
Usuario >> eliminarPregunta: unaPregunta [
preguntas remove: unaPregunta
	
]

{ #category : #operations }
Usuario >> eliminarRespuesta: unaRespuesta [
	respuestas remove: unaRespuesta
	
]

{ #category : #accessing }
Usuario >> fechaHoraCreacion [
	^fechaHoraCreacion
]

{ #category : #accessing }
Usuario >> fechaHoraCreacion: unaFecha [
	fechaHoraCreacion:= unaFecha
]

{ #category : #initialization }
Usuario >> initialize [

	usuariosSeguidos := OrderedCollection new.
	topicosDeInteres := OrderedCollection new.
	votos := OrderedCollection new.
	preguntas := OrderedCollection new.
	respuestas := OrderedCollection new
]

{ #category : #accessing }
Usuario >> nombre [
	^nombre
]

{ #category : #accessing }
Usuario >> nombre: unNombre [
nombre := unNombre
]

{ #category : #operations }
Usuario >> obtenerPreguntasRelevantes [
	"^ (colección de Preguntas)
(A la colección de Usuario topicosDeInteres le pido a cada topico su colección de preguntas) + (a la colección de Usuario usuariosSeguidos le pido a cada usuario su colección de preguntas)
	Se hace con flatCollect? dudoso. Seria juntas las dos colecciones y devolver esa nueva coleccion
"

	
]

{ #category : #accessing }
Usuario >> preguntas [
^preguntas

]

{ #category : #accessing }
Usuario >> respuestas [
^respuestas

]

{ #category : #operations }
Usuario >> seguirUsuario: usuarioASeguir [
	usuariosSeguidos add: usuarioASeguir
]

{ #category : #accessing }
Usuario >> topicosDeInteres [
^topicosDeInteres

]

{ #category : #accessing }
Usuario >> usuarioSeguidos [
^usuariosSeguidos
]

{ #category : #accessing }
Usuario >> votos [
^votos
]
