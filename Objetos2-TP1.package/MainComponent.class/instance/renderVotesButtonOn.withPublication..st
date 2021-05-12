rendering
renderVotesButtonOn: aCanvas withPublication: unaPublicacion
	aCanvas anchor
		callback: [ unaPublicacion
				agregarVoto:
					(Voto
						likeConUsuario: self session usuario
						yPublicacion: unaPublicacion) ];
		with: [ aCanvas button: 'Like' ].
	aCanvas anchor
		callback: [ unaPublicacion
				agregarVoto:
					(Voto
						dislikeConUsuario: self session usuario
						yPublicacion: unaPublicacion) ];
		with: [ aCanvas button: 'Dislike' ]