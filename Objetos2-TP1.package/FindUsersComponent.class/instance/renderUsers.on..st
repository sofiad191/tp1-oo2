rendering
renderUsers: usuarios on: aCanvas
	^ aCanvas
		unorderedList: [ usuarios
				do: [ :each | (self session usuario siSoyYoOLoSigo: each)
						ifFalse: [ aCanvas
								listItem: [ aCanvas
										text: each nombre;
										space.
									aCanvas anchor
										callback: [ self seguirUsuario: each ];
										with: [ aCanvas button: 'Seguir usuario' ] ] ] ] ]