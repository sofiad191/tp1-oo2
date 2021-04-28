rendering
renderTopicOn: aCanvas
	aCanvas heading level: 4; with: 'Topicos'.
	aCanvas
		paragraph: [ pregunta topicos
				do: [ :each | 
					aCanvas span: ' ' , each nombre , ' '.
					aCanvas anchor
						callback: [ self session usuario agregarTopicoDeInteres: each ];
						with: [ aCanvas button: 'Seguir Topico' ] ] ]