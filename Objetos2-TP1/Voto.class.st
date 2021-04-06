Class {
	#name : #Voto,
	#superclass : #Object,
	#instVars : [
		'creador',
		'publicacion',
		'estado',
		'fechaHoraCreacion'
	],
	#category : #'Objetos2-TP1'
}

{ #category : #accessing }
Voto >> creador [
^creador
]

{ #category : #accessing }
Voto >> creador: unCreador [
	creador := unCreador
]

{ #category : #operations }
Voto >> darDislike [
	estado := false
]

{ #category : #operations }
Voto >> darLike [
	estado := true.
]

{ #category : #accessing }
Voto >> estado [
^estado
]

{ #category : #accessing }
Voto >> fechaHoraCreacion [
^fechaHoraCreacion

]

{ #category : #accessing }
Voto >> fechaHoraCreacion: unaFecha [
fechaHoraCreacion := unaFecha	
]

{ #category : #initialization }
Voto >> initialize [
" ???? ojo con esto chequear"
	publicacion := nil.
	estado := nil
]

{ #category : #accessing }
Voto >> publicacion [
	^publicacion
]

{ #category : #accessing }
Voto >> publicacion: unaPublicacion [
	publicacion:= unaPublicacion
]
