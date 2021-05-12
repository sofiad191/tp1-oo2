rendering
renderVotesOn: aCanvas fromPublication: unaPublicacion
	^ aCanvas
		span:
			unaPublicacion cantidadLikes asString , ' likes  |  '
				, unaPublicacion cantidadDislikes asString , ' dislikes'