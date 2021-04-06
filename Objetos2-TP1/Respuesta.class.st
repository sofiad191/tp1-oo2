Class {
	#name : #Respuesta,
	#superclass : #Publicacion,
	#instVars : [
		'texto',
		'usuario'
	],
	#category : #'Objetos2-TP1'
}

{ #category : #operations }
Respuesta >> borrarRespuesta [
"aca seria mandar mensaje a usuario para borrarRespuesta (con self?)"
	
]

{ #category : #initialization }
Respuesta >> initialize [
	super initialize.

]

{ #category : #accessing }
Respuesta >> texto [
	^texto
]

{ #category : #accessing }
Respuesta >> texto: unTexto [
texto:= unTexto
]

{ #category : #accessing }
Respuesta >> usuario [
^usuario
]

{ #category : #accessing }
Respuesta >> usuario: unUsuario [
	usuario := unUsuario
]
