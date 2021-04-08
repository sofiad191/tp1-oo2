accessing
respuestas
	

	^ respuestas
		asSortedCollection: [ :a :b | a calcularPuntaje <= b calcularPuntaje ]