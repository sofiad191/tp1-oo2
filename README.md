# Trabajo practico 1 - Orientación a Objetos 2

Integrantes 
- D'Ascanio, Sofía
- García, Agustina Montserrat 

El trabajo práctico nº 1 es el diseño e implementación de una aplicación Web interactiva. Este
TP 1 es de entrega obligatoria y debe hacerse en grupos de dos personas.

CuOOra es una red social de preguntas y respuestas. Los usuarios pueden crear ambas cosas (es
decir, crear nuevas preguntas o crear respuestas para preguntas de otros usuarios), como así
también votarlas mediante mecanismo de like/dislike. Las preguntas deben pertenecer al
menos a un tópico.
A través de CuOOra debe proveer la siguiente funcionalidad:
● Crear un nuevo usuario: indicando su nombre de usuario, contraseña. Debe registrarse
fecha y hora de creación de la cuenta.
● Agregar tópicos: indicando su nombre y descripción.
● Agregar pregunta: indicando los tópicos a las que se relaciona (al menos uno), un título,
una descripción de la pregunta. Debe registrarse el usuario que la realiza y hora y fecha
de creación.
● Agregar una respuesta: se indica pregunta que se responde, el texto de la respuesta,
hora y fecha de creación. Debe registrarse el usuario que la realiza.
● Agregar un usuario como follower de otro.
● Registrar Like/Dislikes a preguntas y respuestas: además se indica el usuario que realiza
esa acción y debe saberse el momento en el que realizó la acción. Un usuario puede
realizar un solo like o un solo dislike para una pregunta o respuesta. Si un usuario dio like
a una pregunta o respuesta, y luego da un dislike, lo que debe suceder es que se elimina
el like anterior, y se agrega el dislike.
● Registrar un tópico de interés para un usuario determinado.
● Obtener todas las preguntas de un tópico: se indica un tópico y debe retornar todas las
preguntas que se realizaron relacionadas a ese tópico.
● Obtener preguntas relevantes para un usuario determinado: Se considera relevante
una pregunta cuando ésta pertenece a un tópico de interés para el usuario en cuestión o
bien cuando fue realizada por alguno de los usuarios que sigue en la red social.
