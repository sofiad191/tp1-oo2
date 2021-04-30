utility
topicosConParteDelString: unString
	^ topicos		select:
			[ :each | each nombre asLowercase includesSubstring: unString asLowercase ]