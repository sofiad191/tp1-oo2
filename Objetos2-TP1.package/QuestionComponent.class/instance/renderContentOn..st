rendering
renderContentOn: aCanvas
	"Toda la info de pregunta + sus respuestas"

	aCanvas heading
		level: 1;
		with: 'CuOOra '.
	aCanvas horizontalRule.
	self renderEncabezadoDePreguntaOn: aCanvas.
	aCanvas break.
	self renderTopicOn: aCanvas.
	aCanvas break.
	self renderVotesOn: aCanvas fromQuestion: pregunta.
	self renderQuestionBodyOn: aCanvas fromQuestion: pregunta.
	aCanvas break.
	self renderAnswersOn: aCanvas.
	aCanvas anchor
		callback: [ self answer ];
		with: [ aCanvas button: 'Volver' ]