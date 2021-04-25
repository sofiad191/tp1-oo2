rendering
renderQuestionButton: aCanvas withQuestion: unaPregunta
	aCanvas anchor
			callback: [ self session usuario agregarVotoConEstado: true aPublicacion: unaPregunta  ];
			with: [ aCanvas button: 'Like' ].
	aCanvas anchor
			callback:[ self session usuario agregarVotoConEstado: false aPublicacion: unaPregunta  ];
			with: [ aCanvas button: 'Dislike' ].