<p>
  <img src="assets/splash/pokeball.svg" width="64" height="64">
</p>

# Pocket Ville

La enciclopedia práctica para entrenadores, al alcance de tus manos. Sumérgete en los horizontes del universo Pokémon y guarda a todos us compañeros de combate favoritos.

<p align="center">
  <img src="Pocket Ville Screenshot.png">
</p>

# Acerca de Pocket Ville

Ésto es un poyecto conceptual de una app al estilo Pokedex para móviles la cual hice para una prueba técnica. Hecha enteramente con Flutter y Riverpod.

# Pocket Ville a detalle

Éste proyecto ha sido increíblemente beneficioso para mi crecimiento personal, pudiendo aprender un montón de cosas nuevas y, aún más, he tenido que salir del "molde" al cual me había adaptado en mi trabajo anterior, en donde había adquirido muchas costumbres, las cuales no son necesariamente malas, pero claramente no se ajustan a todo tipo de proyectos.

## Lo más estándar posible

Uno de mis objetivos al empezar este proyecto era no depender en tantos paquetes externos como sea posible y en su lugar depender más en prácticas estándares para aprovechar a Flutter lo máximo posible. Éste enfoque se ve mejor reflejado al no usar GoRouter para la implementación de navegación por ramas y es que esa decisión no fue solamente por enfoque, sino por experiencia.

Personalmente, no soy muy fan de GoRouter y la verdad me parece que presenta problemas más complejos que los que intenta resolver. En mi puesto anterior, era bastante frecuente tanto para mí como para mis compañeros encontrarse con problemas relacionados a GoRouter y debido a la complejidad del proyecto, nunca pudimos sacarle el máximo partido a GoRouter.

## Concurrencia controlada

Tan pronto como empecé a integrar la app con la Pokéapi me di cuenta que el uso de paralelismo aquí iba a ser indispensable. El enfoque que tiene Dart respecto al paralelismo es bastante estricto y debido a eso siempre ha sido un tema complicado para mí, pero aquí finalmente he podido domar el uso de Isolates en aplicaciones Flutter.

Pocket Ville hace uso de una clase utilitaria (`BackgroundWorker`) que se encarga de mantener un Isolate vivo durante la ejecución de la aplicación. En conjunto con Riverpod, `BackgroundWorker` se puede usar de forma similar a `compute`, con la diferencia de que `BackgroundWorker` mantendrá el mismo Isolate vivo hasta que la app cierre en lugar de crear nuevos Isolates por cada nueva tarea que se ejecute (como sucede con `compute`).

## Responsividad con GraphQL

Debo admitir que ésta es mi primera vez trabajando con la Pokéapi y sinceramente me parece una herramienta fascinante, es una API extremadamente completa y muy bien organizada, excelente para éste tipo de proyectos mock. Sin embargo, también creo que, la información está bastante fragmentada, dando como resultado la necesidad de hacer múltiples peticiones a diferenes endpoints, lo cual toma tiempo y arruina la experiencia del usuario al hacerle esperar por mucho tiempo.

Con eso en mente, honestamente preferí dar prioridad a la responsividad de la app y la experiencia de usuario usando la API experimental de GraphQL que provee Pokeapi. Ésto mejoró considerablemente la experiencia y los tiempos de espera al cargar datos, pero claramente en un proyecto real éste tipo de decisiones requieren de una mejor planeación previa para minimizar problemas/arrepentimientos a largo plazo.