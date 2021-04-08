operations
calcularPuntaje

	| likes dislikes |
	likes := votos count: [ :unVoto | unVoto estado = true ].
	dislikes := votos size - likes.
	^ likes - dislikes