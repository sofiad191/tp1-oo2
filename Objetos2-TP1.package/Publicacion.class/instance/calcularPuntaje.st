operations
calcularPuntaje
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