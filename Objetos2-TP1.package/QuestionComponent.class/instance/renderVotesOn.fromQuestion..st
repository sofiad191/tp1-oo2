rendering
renderVotesOn: aCanvas fromQuestion: unaPregunta
	^ aCanvas unorderedList: [ aCanvas listItem: unaPregunta cantidadLikes.
					aCanvas listItem: unaPregunta cantidadDislikes.
					aCanvas anchor
						callback: [ self session usuario agregarVotoConEstado: true aPublicacion: unaPregunta ];
						with: [ aCanvas button: 'Like' ].
					aCanvas anchor
						callback:
								[ self session usuario agregarVotoConEstado: false aPublicacion: unaPregunta ];
						with: [ aCanvas button: 'Dislike' ]].