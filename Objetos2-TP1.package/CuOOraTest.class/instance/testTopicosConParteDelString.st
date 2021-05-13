tests
testTopicosConParteDelString
	| colec1 |
	colec1 := OrderedCollection new.
	colec1 := sistema topicosConParteDelString: 'a'.
	self assert: colec1 size equals: 1.
	colec1 := sistema topicosConParteDelString: 's'.
	self assert: colec1 size equals: 2.
	colec1 := sistema topicosConParteDelString: 'el'.
	self assert: colec1 size equals: 0