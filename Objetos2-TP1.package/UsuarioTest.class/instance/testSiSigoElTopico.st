tests
testSiSigoElTopico
	self assert: (usuario2 siSigoElTopico: topico1).
	self deny: (usuario2 siSigoElTopico: topico2).
	self assert: (usuario1 siSigoElTopico: topico1).
	self assert: (usuario1 siSigoElTopico: topico2)