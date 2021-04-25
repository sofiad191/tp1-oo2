rendering
renderVotesOn: aCanvas fromQuestion: unaPregunta
	^ aCanvas span: unaPregunta cantidadLikes asString , ' likes  |  ' , unaPregunta cantidadDislikes asString , ' dislikes'.
			