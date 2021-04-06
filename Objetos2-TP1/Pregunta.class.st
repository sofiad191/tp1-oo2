Class {
	#name : #Pregunta,
	#superclass : #Publicacion,
	#instVars : [
		'titulo',
		'descripcion',
		'usuario',
		'respuestas',
		'topicos'
	],
	#category : #'Objetos2-TP1'
}

{ #category : #operations }
Pregunta >> agregarRespuesta: unaRespuesta [
	respuestas add: unaRespuesta
]

{ #category : #operations }
Pregunta >> agregarTopico: unTopico [
	topicos add: unTopico
]

{ #category : #accessing }
Pregunta >> descripcion [
^descripcion
]

{ #category : #accessing }
Pregunta >> descripcion: unaDescripcion [
descripcion:=unaDescripcion
]

{ #category : #operations }
Pregunta >> eliminarPregunta [
	"mando a topicos borrarPregunta (todos de la coleccion), borro los topicos, mando a las respuestas para que los usuarios borrenRespuestas, borro las respuestas, borro la pregunta de la coleccion del usuario,
borro la instancia? chequear esto"

	
]

{ #category : #initialization }
Pregunta >> initialize [
	
	super initialize.

	respuestas := OrderedCollection new.
	topicos := OrderedCollection new
]

{ #category : #accessing }
Pregunta >> respuestas [
"este es el getter normal. deberia haber otro metodo(creo) que devuelve la coleccion ordenada (por puntaje). el metodo deberia estar en pregunta. CREO"
	^ respuestas
]

{ #category : #accessing }
Pregunta >> titulo [
^titulo
]

{ #category : #accessing }
Pregunta >> titulo: unTitulo [
titulo:=unTitulo
]

{ #category : #accessing }
Pregunta >> topicos [
^topicos
]

{ #category : #accessing }
Pregunta >> usuario [
^usuario	
]

{ #category : #accessing }
Pregunta >> usuario: unUsuario [
usuario:=unUsuario
]
