tests
testUsuariosConParteDelString
	| colec1 |
	colec1 := OrderedCollection new.
	colec1 := sistema usuariosConParteDelString: 'a'.
	self assert: colec1 size equals: 2.
	colec1 := sistema usuariosConParteDelString: 'Pa'.
	self assert: colec1 size equals: 1.
	colec1 := sistema usuariosConParteDelString: 'el'.
	self assert: colec1 size equals: 0.