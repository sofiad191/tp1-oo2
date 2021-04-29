rendering
renderVotesButton: aCanvas withQuestion: unaPregunta
	aCanvas anchor
		callback: [ unaPregunta agregarLikeConUsuario: self session usuario ];
		with: [ aCanvas button: 'Like' ].
	aCanvas anchor
		callback: [ unaPregunta agregarDislikeConUsuario: self session usuario ];
		with: [ aCanvas button: 'Dislike' ]