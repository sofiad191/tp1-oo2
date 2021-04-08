tests
testAgregarTopicoDeInteres
	self assert: us1 topicosDeInteres size equals: 3.
	self deny: us1 topicosDeInteres size equals: 2.
	
	self assert: us2 topicosDeInteres size equals: 2.
		self assert: us3 topicosDeInteres size equals: 2.
	
	