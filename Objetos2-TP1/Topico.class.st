Class {
	#name : #Topico,
	#superclass : #Object,
	#instVars : [
		'nombre',
		'descripcion',
		'preguntas'
	],
	#category : #'Objetos2-TP1'
}

{ #category : #'as yet unclassified' }
Topico class >> conNombre: unNombre yDescripcion: unaDescripcion [
	^ self new
	nombre: unNombre;
	descripcion: unaDescripcion;
	yourself
]

{ #category : #operations }
Topico >> agregarPregunta: unaPregunta [
preguntas add: unaPregunta
]

{ #category : #operations }
Topico >> borrarPregunta: unaPregunta [
preguntas remove: unaPregunta
	
]

{ #category : #accessing }
Topico >> descripcion [
^descripcion
]

{ #category : #accessing }
Topico >> descripcion: unaDescripcion [
	descripcion := unaDescripcion
]

{ #category : #initialization }
Topico >> initialize [
	preguntas := OrderedCollection new
]

{ #category : #accessing }
Topico >> nombre [
^nombre
]

{ #category : #accessing }
Topico >> nombre: unNombre [
nombre := unNombre
]

{ #category : #accessing }
Topico >> preguntas [
^preguntas
]
