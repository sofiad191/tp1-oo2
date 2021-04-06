Class {
	#name : #Publicacion,
	#superclass : #Object,
	#instVars : [
		'fechaHoraCreacion',
		'cantidadLikes',
		'cantidadDislikes',
		'votos'
	],
	#category : #'Objetos2-TP1'
}

{ #category : #operations }
Publicacion >> agregarVoto: unVoto [
	votos add: unVoto
]

{ #category : #operations }
Publicacion >> calcularPuntaje [
	"^ (integer) cantidadLikes – cantidadDislikes ---> esto chequear si vale la pena tener dos variables
	se puede recorrer la coleccion de votos y contar positivos y negativos
	Tiene que haber una forma mas simple de hacer esto."

	| likes dislikes |
	likes := 0.
	dislikes := 0.
	votos
		select: [ :unVoto | 
			unVoto estado
				ifTrue: [ likes := likes + 1 ]
				ifFalse: [ dislikes := dislikes + 1 ] ].
	^ likes - dislikes
]

{ #category : #accessing }
Publicacion >> fechaHoraCreacion [
	^fechaHoraCreacion
]

{ #category : #accessing }
Publicacion >> fechaHoraCreacion: unaFecha [
	fechaHoraCreacion:= unaFecha
]

{ #category : #initialization }
Publicacion >> initialize [ 	
	fechaHoraCreacion := DateAndTime now.
	cantidadLikes := 0.
	cantidadDislikes := 0.
	votos := OrderedCollection new.
]

{ #category : #accessing }
Publicacion >> votos [
	^ votos
]
