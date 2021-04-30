operations
obtenerPreguntasRelevantes
|preguntasRelevantes |
preguntasRelevantes := self topicosDeInteres flatCollect: [ :tops | tops preguntas].
preguntasRelevantes addAll: (self usuariosSeguidos flatCollect: [ :us | us preguntas ]) asSet.
^preguntasRelevantes