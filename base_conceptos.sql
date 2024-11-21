-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-11-2024 a las 00:48:50
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `base_conceptos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conceptos`
--

CREATE TABLE `conceptos` (
  `id` int(11) NOT NULL,
  `tema_id` int(11) NOT NULL,
  `subtema` varchar(255) NOT NULL,
  `concepto` varchar(255) NOT NULL,
  `definicion` text NOT NULL,
  `ejemplo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `conceptos`
--

INSERT INTO `conceptos` (`id`, `tema_id`, `subtema`, `concepto`, `definicion`, `ejemplo`) VALUES
(1, 1, 'Diferentes Estilos de programación', 'Programación estructurada', 'Un estilo de programación que organiza el código mediante el uso de estructuras de control como bucles y condicionales.', 'Ejemplo: Uso de bucles y condicionales para organizar la ejecución del código de manera secuencial.'),
(2, 1, 'Diferentes Estilos de programación', 'Programación orientada a objetos', 'Un estilo de programación que organiza el código mediante el uso de clases y objetos que encapsulan datos y comportamiento.', 'Ejemplo: Crear clases para encapsular datos y comportamiento, como en lenguajes como Java y Python.'),
(3, 1, 'Diferentes Estilos de programación', 'Programación funcional', 'Un estilo de programación basado en funciones puras y sin efectos secundarios, que evita el uso de estado mutable.', 'Ejemplo: Uso de funciones puras y evitación de efectos secundarios, común en Haskell.'),
(4, 1, 'Diferentes Estilos de programación', 'Programación lógica', 'Un estilo de programación que se basa en la definición de relaciones lógicas mediante hechos y reglas.', 'Ejemplo: Definir relaciones lógicas a través de hechos y reglas en Prolog.'),
(5, 1, 'Analizando diferentes estilos de programación', 'Comparación de paradigmas', 'El análisis de las diferencias y similitudes entre distintos paradigmas de programación para identificar sus ventajas y desventajas.', 'Ejemplo: Comparar la programación orientada a objetos con la funcional para ver diferencias en la gestión del estado.'),
(6, 1, 'Analizando diferentes estilos de programación', 'Control de flujo', 'Mecanismo que permite dirigir el orden de ejecución de las instrucciones en un programa.', 'Ejemplo: En programación estructurada, se usan condicionales y bucles para controlar el flujo del programa.'),
(7, 1, 'Analizando diferentes estilos de programación', 'Abstracción', 'El proceso de simplificar el diseño de un sistema al ocultar detalles complejos.', 'Ejemplo: En la programación orientada a objetos, se usa la abstracción para simplificar la complejidad de un sistema.'),
(8, 1, 'Analizando diferentes estilos de programación', 'Reutilización de código', 'La práctica de utilizar código existente en otros programas o partes de un mismo programa.', 'Ejemplo: La programación orientada a objetos permite reutilizar código mediante la herencia y composición.'),
(9, 1, 'Evaluación de expresiones', 'Orden de operaciones', 'Reglas que determinan el orden en el que se evalúan los operadores en una expresión.', 'Ejemplo: En aritmética, la multiplicación tiene mayor precedencia que la suma, lo que afecta el resultado de las expresiones.'),
(10, 1, 'Evaluación de expresiones', 'Evaluación de izquierda a derecha', 'Proceso de evaluar las expresiones en el orden en que aparecen, de izquierda a derecha.', 'Ejemplo: En lenguajes como Python, las expresiones se evalúan de izquierda a derecha.'),
(11, 1, 'Evaluación de expresiones', 'Cortocircuito en expresiones lógicas', 'Un tipo de evaluación donde la expresión se detiene al encontrar un resultado definitivo, sin evaluar el resto.', 'Ejemplo: En JavaScript, una expresión OR detiene la evaluación al encontrar el primer valor verdadero.'),
(12, 1, 'Evaluación de expresiones', 'Evaluación perezosa', 'Técnica de evaluación en la que una expresión solo se evalúa cuando su valor es necesario.', 'Ejemplo: En Haskell, las expresiones son evaluadas solo cuando su valor es necesario.'),
(13, 1, 'Tipos de datos', 'Entero', 'Tipo de dato numérico que representa números enteros sin parte decimal.', 'Ejemplo: En Python, el número 42 es de tipo entero y se usa para contar elementos.'),
(14, 1, 'Tipos de datos', 'Flotante', 'Tipo de dato numérico que representa números con decimales.', 'Ejemplo: El número 3.14 en Python representa un valor decimal y se usa en cálculos de precisión.'),
(15, 1, 'Tipos de datos', 'Booleano', 'Tipo de dato que solo puede tener dos valores: verdadero o falso.', 'Ejemplo: El valor True o False se usa en condiciones y lógica de control.'),
(16, 1, 'Tipos de datos', 'Cadena de texto', 'Tipo de dato que representa una secuencia de caracteres usada para manejar texto.', 'Ejemplo: \"Hola, mundo\" es una cadena de caracteres usada para representar texto.'),
(17, 1, 'Disciplina tipos', 'Tipado estático', 'Sistema de tipado donde el tipo de cada variable se define en tiempo de compilación y no puede cambiar.', 'Ejemplo: En Java, las variables deben declararse con un tipo específico como int o String.'),
(18, 1, 'Disciplina tipos', 'Tipado dinámico', 'Sistema de tipado donde el tipo de cada variable se determina en tiempo de ejecución.', 'Ejemplo: En Python, el tipo de una variable se determina en tiempo de ejecución.'),
(19, 1, 'Disciplina tipos', 'Tipado fuerte', 'Sistema de tipado en el que los tipos de datos no pueden combinarse sin conversión explícita.', 'Ejemplo: En Python, no se permite combinar tipos incompatibles, como sumar un número y una cadena.'),
(20, 1, 'Disciplina tipos', 'Tipado débil', 'Sistema de tipado en el que se permite la combinación automática de distintos tipos.', 'Ejemplo: En JavaScript, se permite sumar una cadena y un número, convirtiendo automáticamente los tipos.'),
(21, 1, 'Funciones', 'Función pura', 'Función que no tiene efectos secundarios y siempre devuelve el mismo resultado para los mismos argumentos.', 'Ejemplo: En programación funcional, una función pura no tiene efectos secundarios y devuelve el mismo resultado dado el mismo input.'),
(22, 1, 'Funciones', 'Función de orden superior', 'Función que recibe otras funciones como argumentos o devuelve una función como resultado.', 'Ejemplo: En JavaScript, la función map toma otra función como argumento para transformar elementos de una lista.'),
(23, 1, 'Funciones', 'Recursión', 'Técnica de programación en la que una función se llama a sí misma.', 'Ejemplo: Una función recursiva se llama a sí misma, como el cálculo de factorial en matemáticas.'),
(24, 1, 'Funciones', 'Clausura', 'Una función que recuerda el entorno en el que fue creada, incluyendo las variables locales que estaban en su alcance.', 'Ejemplo: En Python, una clausura es una función que recuerda los valores de variables definidas en su ámbito.'),
(25, 2, 'Introducción al modelo de programación funcional', 'Funciones puras', 'Una función pura siempre devuelve el mismo resultado dado el mismo input y no causa efectos secundarios.', 'Ejemplo: Una función pura siempre devuelve el mismo resultado dado el mismo input, sin modificar el estado global.'),
(26, 2, 'Introducción al modelo de programación funcional', 'Inmutabilidad', 'Los datos no cambian una vez creados, promoviendo seguridad y predictibilidad en el código.', 'Ejemplo: En programación funcional, los datos no cambian una vez creados.'),
(27, 2, 'Introducción al modelo de programación funcional', 'Expresiones lambda', 'Funciones anónimas que se utilizan para operaciones simples, sin definir explícitamente un nombre.', 'Ejemplo: Una función lambda en Python permite definir funciones anónimas para operaciones simples.'),
(28, 2, 'Introducción al modelo de programación funcional', 'Composición de funciones', 'El proceso de combinar dos o más funciones para crear una nueva función.', 'Ejemplo: En Haskell, se pueden componer funciones como f . g para crear una nueva función.'),
(29, 2, 'El tipo de datos', 'Tipos básicos', 'Son los tipos fundamentales de datos en un lenguaje, como enteros, flotantes y booleanos.', 'Ejemplo: En Haskell, los tipos básicos incluyen Int, Float, y Bool, que son esenciales para las operaciones aritméticas y lógicas.'),
(30, 2, 'El tipo de datos', 'Tuplas', 'Estructura de datos que permite agrupar varios valores de diferentes tipos.', 'Ejemplo: Las tuplas permiten agrupar varios valores de diferentes tipos en Haskell, como (3, \"Hola\").'),
(31, 2, 'El tipo de datos', 'Listas', 'Estructura de datos que permite almacenar una colección ordenada de elementos del mismo tipo.', 'Ejemplo: Una lista en Haskell es una colección ordenada de elementos del mismo tipo, como [1, 2, 3].'),
(32, 2, 'El tipo de datos', 'Tipos definidos por el usuario', 'Nuevos tipos creados por el programador para representar conceptos específicos en un programa.', 'Ejemplo: En Haskell, se puede definir un nuevo tipo de datos con la palabra clave data.'),
(33, 2, 'Funciones', 'Función de orden superior', 'Función que toma otras funciones como argumentos o devuelve una función como resultado.', 'Ejemplo: Una función de orden superior, como map en Python, toma otra función como argumento para transformar cada elemento de una lista.'),
(34, 2, 'Funciones', 'Recursión', 'Método en el que una función se llama a sí misma para resolver problemas.', 'Ejemplo: Una función recursiva se llama a sí misma, como en el cálculo de factorial en Haskell.'),
(35, 2, 'Funciones', 'Clausura', 'Una función que recuerda el entorno en el que fue creada, incluyendo variables externas.', 'Ejemplo: Una clausura es una función que recuerda el entorno en el que se definió, como en Python.'),
(36, 2, 'Funciones', 'Aplicación parcial', 'Fijar algunos parámetros de una función para crear una nueva función con menos argumentos.', 'Ejemplo: En Haskell, se pueden fijar algunos parámetros de una función para crear una función nueva.'),
(37, 2, 'Intervalos', 'Rango de enteros', 'Secuencia de números enteros dentro de un límite específico.', 'Ejemplo: En Haskell, [1..5] genera una lista de números del 1 al 5.'),
(38, 2, 'Intervalos', 'Rango con pasos', 'Secuencia de números con incrementos específicos.', 'Ejemplo: En Haskell, [1,3..9] genera una lista con un intervalo de 2 en cada paso.'),
(39, 2, 'Intervalos', 'Intervalos infinitos', 'Una secuencia infinita que se genera y evalúa según necesidad.', 'Ejemplo: En Haskell, [1..] genera un intervalo infinito de números, evaluado de forma perezosa.'),
(40, 2, 'Intervalos', 'Intervalos alfabéticos', 'Secuencia de caracteres en orden alfabético dentro de un rango.', 'Ejemplo: [\'a\'..\'e\'] en Haskell genera una lista de letras de la a a la e.'),
(41, 2, 'Operadores', 'Operador de suma', 'Operador que realiza una suma entre dos valores numéricos.', 'Ejemplo: En Haskell, el operador + se usa para sumar dos números.'),
(42, 2, 'Operadores', 'Operador de concatenación', 'Operador que une dos listas en una sola.', 'Ejemplo: En Haskell, el operador ++ se usa para concatenar dos listas.'),
(43, 2, 'Operadores', 'Operador de composición', 'Operador que combina dos funciones en una nueva función.', 'Ejemplo: En Haskell, el operador . compone dos funciones, como en (f . g) x.'),
(44, 2, 'Operadores', 'Operador de aplicación', 'Operador que permite aplicar una función a un argumento de manera sencilla.', 'Ejemplo: En Haskell, el operador $ permite aplicar una función a un argumento sin paréntesis.'),
(45, 2, 'Aplicaciones de las listas', 'Mapeo', 'Proceso de aplicar una función a cada elemento de una lista.', 'Ejemplo: En Haskell, map (*2) [1,2,3] devuelve [2,4,6] al multiplicar cada elemento por 2.'),
(46, 2, 'Aplicaciones de las listas', 'Filtrado', 'Proceso de seleccionar elementos de una lista que cumplen con una condición.', 'Ejemplo: En Haskell, filter (>2) [1,2,3,4] devuelve [3,4] al filtrar elementos mayores a 2.'),
(47, 2, 'Aplicaciones de las listas', 'Plegado', 'Proceso de combinar todos los elementos de una lista en un solo valor mediante una función acumuladora.', 'Ejemplo: En Haskell, foldl (+) 0 [1,2,3] suma todos los elementos de la lista para dar 6.'),
(48, 2, 'Aplicaciones de las listas', 'Concatenación', 'Unión de múltiples listas en una sola lista.', 'Ejemplo: En Haskell, la función concat [[1,2],[3,4]] devuelve [1,2,3,4].'),
(49, 2, 'Árboles', 'Árbol binario', 'Estructura de datos en la que cada nodo tiene a lo sumo dos hijos.', 'Ejemplo: Un árbol binario es una estructura en la que cada nodo tiene a lo sumo dos hijos.'),
(50, 2, 'Árboles', 'Recorrido en preorden', 'Método de recorrido donde se visita el nodo raíz antes de sus subárboles.', 'Ejemplo: En un recorrido en preorden, se visita el nodo raíz antes de sus subárboles.'),
(51, 2, 'Árboles', 'Recorrido en inorden', 'Método de recorrido donde se visita el subárbol izquierdo, luego el nodo y el subárbol derecho.', 'Ejemplo: En un recorrido en inorden, se visita el subárbol izquierdo, luego el nodo y el subárbol derecho.'),
(52, 2, 'Árboles', 'Recorrido en postorden', 'Método de recorrido donde se visitan los subárboles antes del nodo raíz.', 'Ejemplo: En un recorrido en postorden, se visitan los subárboles antes del nodo raíz.'),
(53, 2, 'Evaluación perezosa', 'Evaluación diferida', 'Método en el que las expresiones se evalúan solo cuando su valor es necesario.', 'Ejemplo: En Haskell, las expresiones se evalúan solo cuando su valor es necesario.'),
(54, 2, 'Evaluación perezosa', 'Listas infinitas', 'Secuencias infinitas que pueden ser procesadas mediante evaluación perezosa.', 'Ejemplo: Haskell puede trabajar con listas infinitas como [1..] debido a su evaluación perezosa.'),
(55, 2, 'Evaluación perezosa', 'Evaluación condicional', 'Las expresiones en una condición solo se evalúan si es necesario.', 'Ejemplo: En Haskell, si una condición no se cumple, la expresión correspondiente no se evalúa.'),
(56, 2, 'Evaluación perezosa', 'Optimización de recursos', 'La evaluación perezosa permite reducir el uso de memoria y procesamiento al evaluar solo lo necesario.', 'Ejemplo: La evaluación perezosa permite optimizar el uso de memoria y procesamiento.'),
(57, 3, 'Repaso de la lógica de primer orden', 'Cuantificadores', 'Los cuantificadores son operadores en lógica de primer orden que permiten indicar la cantidad de elementos a los que se aplica una propiedad.', 'Ejemplo: El cuantificador universal ∀x.P(x) indica que la propiedad P se cumple para todos los elementos x.'),
(58, 3, 'Repaso de la lógica de primer orden', 'Predicados', 'Los predicados expresan propiedades de objetos o relaciones entre ellos en la lógica de primer orden.', 'Ejemplo: Un predicado como EsHumano(x) puede indicar que x es humano, basado en su definición lógica.'),
(59, 3, 'Repaso de la lógica de primer orden', 'Funciones', 'Las funciones en lógica de primer orden son relaciones que asignan a cada elemento un único valor o resultado.', 'Ejemplo: Una función lógica como Padre(juan) devuelve el padre de Juan en una base de datos familiar.'),
(60, 3, 'Repaso de la lógica de primer orden', 'Conectivos lógicos', 'Los conectivos lógicos son operadores que combinan proposiciones, como AND y OR.', 'Ejemplo: Conectivos como AND (∧) y OR (∨) se usan para combinar proposiciones en lógica.'),
(61, 3, 'Unificación y resolución', 'Unificación', 'La unificación es el proceso de hacer coincidir dos términos en lógica, enlazando variables si es necesario.', 'Ejemplo: En Prolog, la unificación permite comparar estructuras y enlazar variables, como X = Y si X e Y son iguales.'),
(62, 3, 'Unificación y resolución', 'Resolución', 'La resolución es un método de inferencia en lógica que permite derivar conclusiones a partir de premisas dadas.', 'Ejemplo: La resolución es una técnica en lógica para deducir nueva información a partir de cláusulas dadas.'),
(63, 3, 'Unificación y resolución', 'Unificación de términos complejos', 'Proceso de unificación aplicado a términos que contienen variables o funciones complejas.', 'Ejemplo: En Prolog, los términos compuestos como padre(X, juan) pueden unificarse con datos específicos.'),
(64, 3, 'Unificación y resolución', 'Aplicación en motores de inferencia', 'Uso de unificación y resolución en sistemas de inteligencia artificial para derivar conclusiones automáticas.', 'Ejemplo: Los motores de inferencia usan unificación y resolución para deducir conclusiones en sistemas basados en reglas.'),
(65, 3, 'Cláusulas de Horn, resolución SLD', 'Cláusula de Horn', 'Una cláusula de Horn es una regla lógica con a lo sumo un literal positivo y cero o más literales negativos.', 'Ejemplo: Una cláusula de Horn es una regla lógica que tiene a lo sumo una conclusión positiva, como \"A :- B, C\".'),
(66, 3, 'Cláusulas de Horn, resolución SLD', 'Resolución SLD', 'Resolución SLD (Selective Linear Definite clause resolution) es un método utilizado en Prolog para inferir conclusiones de cláusulas de Horn.', 'Ejemplo: La resolución SLD se usa en Prolog para resolver consultas basadas en cláusulas de Horn.'),
(67, 3, 'Cláusulas de Horn, resolución SLD', 'Hechos y reglas', 'Los hechos y reglas en programación lógica definen el conocimiento en una base de datos y permiten la inferencia de conclusiones.', 'Ejemplo: En Prolog, los hechos y reglas se representan como cláusulas de Horn para inferencia lógica.'),
(68, 3, 'Cláusulas de Horn, resolución SLD', 'Base de conocimientos', 'Una base de conocimientos en programación lógica almacena hechos y reglas para ser usados en deducción lógica.', 'Ejemplo: Una base de conocimientos en Prolog usa cláusulas de Horn para estructurar la información.'),
(69, 3, 'Programación lógica con cláusulas de Horn', 'Definición de reglas', 'Proceso de establecer reglas lógicas que relacionen hechos o condiciones en un programa lógico.', 'Ejemplo: Una regla en Prolog, como \"es_tia(X, Y) :- hermana(X, Z), padre(Z, Y)\", define relaciones lógicas.'),
(70, 3, 'Programación lógica con cláusulas de Horn', 'Consulta de hechos', 'Proceso de interrogar a la base de conocimientos para verificar la existencia de ciertos hechos.', 'Ejemplo: En Prolog, se puede consultar un hecho como \"?- es_padre(juan, maria)\".'),
(71, 3, 'Programación lógica con cláusulas de Horn', 'Construcción de árboles de resolución', 'Técnica que visualiza las posibles soluciones de una consulta lógica mediante un árbol de decisiones.', 'Ejemplo: En Prolog, el árbol de resolución muestra las decisiones tomadas para resolver una consulta.'),
(72, 3, 'Programación lógica con cláusulas de Horn', 'Recursión en lógica', 'Proceso en el que una regla o función se define en términos de sí misma.', 'Ejemplo: Una regla recursiva en Prolog puede definir un ancestro usando ancestro(X, Y) :- padre(X, Y); ancestro(X, Z), padre(Z, Y).'),
(73, 4, 'Introducción al modelo de programación lógica', 'Hechos en programación lógica', 'Un hecho es una afirmación básica que describe una relación específica entre elementos en la base de conocimientos.', 'Ejemplo: En Prolog, el hecho \"es_gato(tom)\" indica que Tom es un gato.'),
(74, 4, 'Introducción al modelo de programación lógica', 'Reglas lógicas', 'Las reglas lógicas establecen relaciones condicionales entre hechos, permitiendo la deducción de nuevas conclusiones.', 'Ejemplo: En Prolog, la regla \"es_mamifero(X) :- es_gato(X)\" indica que si X es un gato, entonces X es un mamífero.'),
(75, 4, 'Introducción al modelo de programación lógica', 'Consultas', 'Una consulta es una pregunta que se formula al sistema para verificar la existencia de ciertos hechos o relaciones.', 'Ejemplo: En Prolog, \"?- es_gato(tom)\" consulta si Tom es un gato.'),
(76, 4, 'Introducción al modelo de programación lógica', 'Programación declarativa', 'La programación declarativa permite especificar el resultado deseado sin detallar los pasos para alcanzarlo.', 'Ejemplo: En programación lógica, se definen hechos y reglas, y el sistema deduce las respuestas.'),
(77, 4, 'Semántica de los programas lógicos', 'Semántica operacional', 'La semántica operacional describe el proceso de ejecución de un programa en términos de pasos de cálculo.', 'Ejemplo: La semántica operacional describe cómo se ejecuta un programa mediante pasos de cálculo.'),
(78, 4, 'Semántica de los programas lógicos', 'Semántica denotacional', 'La semántica denotacional asigna a cada programa un valor matemático que representa su comportamiento.', 'Ejemplo: La semántica denotacional asocia a cada programa un valor matemático que describe su comportamiento.'),
(79, 4, 'Semántica de los programas lógicos', 'Semántica declarativa', 'La semántica declarativa permite describir qué se desea computar sin especificar cómo hacerlo.', 'Ejemplo: En programación lógica, la semántica declarativa permite expresar qué se desea computar sin especificar cómo.'),
(80, 4, 'Semántica de los programas lógicos', 'Interpretación de reglas', 'La interpretación de reglas en lógica establece relaciones lógicas entre hechos en un programa.', 'Ejemplo: Las reglas en Prolog se interpretan como relaciones lógicas entre hechos.'),
(81, 4, 'Representación clausada del conocimiento', 'Cláusulas de Horn', 'Una cláusula de Horn es una regla lógica que tiene a lo sumo un literal positivo y varios literales negativos.', 'Ejemplo: Una cláusula de Horn tiene a lo sumo un literal positivo, como \"A :- B, C\".'),
(82, 4, 'Representación clausada del conocimiento', 'Hechos como cláusulas unitarias', 'En lógica, un hecho puede representarse como una cláusula unitaria sin condiciones adicionales.', 'Ejemplo: En Prolog, un hecho como \"gato(tom)\" es una cláusula unitaria.'),
(83, 4, 'Representación clausada del conocimiento', 'Conocimiento representado como reglas', 'En programación lógica, el conocimiento se representa mediante reglas que describen relaciones entre hechos.', 'Ejemplo: La regla \"es_hermano(X, Y) :- padre(Z, X), padre(Z, Y)\" representa conocimiento sobre relaciones familiares.'),
(84, 4, 'Representación clausada del conocimiento', 'Base de conocimientos', 'Una base de conocimientos es una colección de hechos y reglas estructurados en forma de cláusulas.', 'Ejemplo: Una base de conocimientos en Prolog consiste en hechos y reglas estructurados en forma de cláusulas.'),
(85, 4, 'Consulta de una base de cláusulas', 'Consultas en Prolog', 'Una consulta es una solicitud de información a la base de conocimientos para verificar hechos o relaciones.', 'Ejemplo: En Prolog, \"?- es_gato(tom)\" consulta si Tom es un gato en la base de hechos.'),
(86, 4, 'Consulta de una base de cláusulas', 'Respuestas a consultas', 'Las respuestas a consultas indican si un hecho o relación existe en la base de conocimientos.', 'Ejemplo: Si la base de conocimientos incluye \"es_gato(tom)\", entonces la consulta \"?- es_gato(tom)\" devuelve verdadero.'),
(87, 4, 'Consulta de una base de cláusulas', 'Consultas con variables', 'Consultas que usan variables para obtener información general o buscar múltiples resultados.', 'Ejemplo: En Prolog, \"?- es_mamifero(X)\" devuelve todos los valores X que son mamíferos.'),
(88, 4, 'Consulta de una base de cláusulas', 'Encadenamiento hacia atrás', 'Método en el que se prueban reglas y hechos en una consulta de forma regresiva hasta encontrar una solución.', 'Ejemplo: En Prolog, se usa encadenamiento hacia atrás para probar reglas y hechos en una consulta.'),
(89, 4, 'Espacios de búsqueda', 'Búsqueda en profundidad', 'Método de búsqueda en el que se explora cada rama completamente antes de retroceder.', 'Ejemplo: Prolog usa búsqueda en profundidad para resolver consultas a través de reglas y hechos.'),
(90, 4, 'Espacios de búsqueda', 'Búsqueda en anchura', 'Método de búsqueda en el que se exploran todos los nodos al mismo nivel antes de descender.', 'Ejemplo: La búsqueda en anchura explora todos los nodos al mismo nivel antes de descender.'),
(91, 4, 'Espacios de búsqueda', 'Espacio de soluciones', 'Conjunto de todas las posibles soluciones para una consulta en programación lógica.', 'Ejemplo: El espacio de soluciones incluye todas las respuestas posibles para una consulta lógica.'),
(92, 4, 'Espacios de búsqueda', 'Poda de espacio de búsqueda', 'Técnica que evita explorar caminos irrelevantes, mejorando la eficiencia de búsqueda.', 'Ejemplo: La poda evita caminos irrelevantes en la búsqueda, mejorando la eficiencia.'),
(93, 4, 'Programación lógica con números, listas y árboles', 'Operaciones con listas', 'Operaciones realizadas sobre listas para verificar pertenencia, concatenación, o extracción de elementos.', 'Ejemplo: En Prolog, se puede consultar si un elemento pertenece a una lista usando la notación [Cabeza|Cola].'),
(94, 4, 'Programación lógica con números, listas y árboles', 'Árboles binarios', 'Estructura de datos en la que cada nodo tiene a lo sumo dos hijos, utilizada para representar jerarquías.', 'Ejemplo: En Prolog, los árboles binarios se pueden representar mediante términos recursivos.'),
(95, 4, 'Programación lógica con números, listas y árboles', 'Recursión en listas', 'Método en el que una lista se procesa de forma recursiva, dividiéndola en sus elementos.', 'Ejemplo: En Prolog, una lista se procesa recursivamente utilizando patrones de coincidencia.'),
(96, 4, 'Programación lógica con números, listas y árboles', 'Operaciones aritméticas', 'Operaciones matemáticas básicas como suma, resta, multiplicación y división.', 'Ejemplo: En Prolog, la operación is/2 permite realizar cálculos aritméticos como X is 3 + 2.'),
(97, 4, 'Control de búsqueda en programas lógicos', 'Control de retroceso', 'Proceso de regresar en una búsqueda para probar caminos alternativos cuando uno falla.', 'Ejemplo: Prolog usa retroceso para buscar todas las posibles soluciones de una consulta.'),
(98, 4, 'Control de búsqueda en programas lógicos', 'Estrategia de búsqueda', 'El orden y método con el que se exploran hechos y reglas afecta el rendimiento del programa.', 'Ejemplo: El orden en que se escriben los hechos y reglas afecta el proceso de búsqueda en Prolog.'),
(99, 4, 'Control de búsqueda en programas lógicos', 'Marcado de alternativas', 'Proceso de registrar todas las opciones posibles para una variable y retroceder si es necesario.', 'Ejemplo: Prolog marca todas las alternativas posibles para una variable y retrocede si una falla.'),
(100, 4, 'Control de búsqueda en programas lógicos', 'Optimización de búsqueda', 'Método para mejorar la eficiencia de búsqueda reorganizando o simplificando las reglas.', 'Ejemplo: Reordenar las reglas puede optimizar el tiempo de respuesta en Prolog.'),
(101, 4, 'Manipulación de términos', 'Unificación de términos', 'Proceso en el que dos términos se comparan y se vinculan si tienen la misma estructura.', 'Ejemplo: En Prolog, dos términos se unifican si tienen la misma estructura y valores coincidentes.'),
(102, 4, 'Manipulación de términos', 'Términos compuestos', 'Términos que contienen otros términos como subpartes, utilizados en relaciones complejas.', 'Ejemplo: Un término compuesto en Prolog como padre(juan) representa una relación.'),
(103, 4, 'Manipulación de términos', 'Comparación de términos', 'Proceso para verificar si dos términos son iguales o distintos.', 'Ejemplo: En Prolog, los operadores == y \\= permiten comparar términos.'),
(104, 4, 'Manipulación de términos', 'Expansión de términos', 'Construcción de términos complejos a partir de términos más simples en un programa lógico.', 'Ejemplo: La expansión de términos permite construir estructuras de datos complejas en Prolog.'),
(105, 4, 'Predicados mitológicos', 'Predicado Zeus', 'En una base de datos mitológica, un predicado que describe las características de Zeus.', 'Ejemplo: En una base de datos de mitología, \"es_dios(zeus)\" indica que Zeus es un dios.'),
(106, 4, 'Predicados mitológicos', 'Predicado Hércules', 'Un predicado que describe relaciones familiares o atributos de Hércules en mitología.', 'Ejemplo: \"es_hijo(hercules, zeus)\" representa que Hércules es hijo de Zeus.'),
(107, 4, 'Predicados mitológicos', 'Predicado Atenea', 'Un predicado que indica que Atenea es una deidad en la base de conocimientos mitológicos.', 'Ejemplo: \"es_diosa(atenea)\" indica que Atenea es una diosa en la base de conocimientos.'),
(108, 4, 'Predicados mitológicos', 'Relaciones familiares mitológicas', 'Predicados que describen relaciones familiares entre dioses en mitología.', 'Ejemplo: \"es_padre(zeus, hercules)\" representa la relación entre Zeus y Hércules.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `temas`
--

CREATE TABLE `temas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `temas`
--

INSERT INTO `temas` (`id`, `nombre`, `descripcion`) VALUES
(1, 'Conceptos Fundamentales', 'Explora los conceptos básicos y estilos de programación fundamentales, estableciendo las bases para otros paradigmas.'),
(2, 'Modelo de Programación Funcional', 'Describe los principios y características del paradigma funcional, que enfatiza el uso de funciones puras y la inmutabilidad.'),
(3, 'Programación Lógica', 'Introduce la lógica de primer orden y los fundamentos de la programación lógica, incluyendo la unificación y la resolución.'),
(4, 'Modelo de Programación Lógica', 'Explica cómo se implementa la programación lógica mediante el uso de cláusulas y conceptos avanzados, como espacios de búsqueda y manipulación de términos.');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `conceptos`
--
ALTER TABLE `conceptos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tema_id` (`tema_id`);

--
-- Indices de la tabla `temas`
--
ALTER TABLE `temas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `conceptos`
--
ALTER TABLE `conceptos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT de la tabla `temas`
--
ALTER TABLE `temas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `conceptos`
--
ALTER TABLE `conceptos`
  ADD CONSTRAINT `conceptos_ibfk_1` FOREIGN KEY (`tema_id`) REFERENCES `temas` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
