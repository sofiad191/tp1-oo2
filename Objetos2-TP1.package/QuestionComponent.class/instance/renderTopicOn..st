rendering
renderTopicOn: aCanvas
	aCanvas
		unorderedList: [ pregunta topicos
				do: [ :each | aCanvas listItem: each nombre.
									aCanvas anchor
										callback: [ self session usuario agregarTopicoDeInteres: each ];
										with: [ aCanvas button: 'Seguir Topico' ] ] ]