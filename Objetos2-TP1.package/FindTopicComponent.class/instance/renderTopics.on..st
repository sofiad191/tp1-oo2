rendering
renderTopics: topicos on: aCanvas
	^ aCanvas
		unorderedList: [ topicos
				do: [ :each | (self session usuario siSigoElTopico: each)
					ifFalse: [ aCanvas
						listItem: [ aCanvas
								text: each nombre;
								space.
							aCanvas anchor
								callback: [ self seguirTopico: each ];
								with: [ aCanvas button: 'Seguir topico' ] ] ] ] ]