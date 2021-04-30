rendering
renderTopicsOn: aCanvas
	aCanvas heading
		level: 3;
		with: 'Topicos seguidos'.
	aCanvas
		unorderedList: [ self session usuario topicosDeInteres
				do: [ :each | 
					aCanvas anchor
						callback: [ self goToTopic: each ];
						with: [ aCanvas span: each nombre ].
					aCanvas break ] ].
	aCanvas anchor
		callback: [ self findTopics ];
		with: [ aCanvas button: 'Encuentra topicos' ]