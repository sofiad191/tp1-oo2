Class {
	#name : #CuOOra,
	#superclass : #Object,
	#instVars : [
		'topicos',
		'usuarios'
	],
	#category : #'Objetos2-TP1'
}

{ #category : #operations }
CuOOra >> agregarTopicoConNombre: unNombre yDescripcion: unaDescripcion [
	"Deberia devolver ^nuevoTopico ? "
	| nuevoTopico |
	nuevoTopico := Topico
		conNombre: unNombre
		yDescripcion: unaDescripcion.
	topicos add: nuevoTopico.
	 
	
]

{ #category : #operations }
CuOOra >> crearUsuarioConNombre: unNombre yContraseña: unaContraseña [
"deberia devolver ^nuevoUsuario ?"
	| nuevoUsuario |
	nuevoUsuario := Usuario
		conNombre: unNombre
		yContraseña: unaContraseña.
	usuarios add: nuevoUsuario
]

{ #category : #initialization }
CuOOra >> initialize [
	usuarios := OrderedCollection new.
	topicos := OrderedCollection new.
]

{ #category : #accessing }
CuOOra >> topicos [
	^ topicos
]

{ #category : #accessing }
CuOOra >> usuarios [
	^ usuarios
]
