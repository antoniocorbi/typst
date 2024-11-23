#let uu = math.bold(math.upright("u"))
#let vv = math.bold(math.upright("v"))
#let ww = math.bold(math.upright("w"))
#let ee = math.bold(math.upright("e"))
#let aa = math.alpha
#let oo = [*0*]

#set text(font: "Calibri", size: 18pt, lang: "es")
= Actividad grupal: Espacios vectoriales y euclídeos
<actividad-grupal-espacios-vectoriales-y-euclídeos>
== Ejercicio 1
<ejercicio-1>
Dadas las bases $B_1 = { (1 , 2 , 0) , (1 , 0 , 0) , (0 , 1 , 2) }$ y
$B_2 = { (1 , 0 , 1) , (0 , 1 , 1) , (0 , 0 , 2) }$, se pide:

+ Encontrar la matriz de cambio de base de $B_1$ a $B_2$.
+ ¿Cuáles son las coordenadas del vector $vv = (2 , 1 , 1)$, expresado en
  $B_1$, en la base $B_2$?

== Ejercicio 2
<ejercicio-2>
Resuelve estos problemas sobre dependencia e independencia lineal.

=== Ejercicio 2.a
<ejercicio-2.a>
Sean los vectores en $bb(R)^4$ dados por:
${ (2 , 2 , a , a) , (0 , - 1 , 0 , - 1) , (b , 2 , a , - 1) , (a , a , a , - 4) }$,
¿qué condición deben verificar $a$ y $b$ de forma que estos vectores
sean linealmente dependientes?

=== Ejercicio 2.b
<ejercicio-2.b>
Dado el vector $upright(bold(v)) = (1 , 2 , 3)$, expresa
$upright(bold(v))$ como combinación lineal de los vectores
$(1 , 0 , 0)$, $(1 , 1 , 0)$ y $(1 , 0 , - 2)$. ¿Se podría expresar de
dos maneras distintas? Justifica la respuesta.

= Ejercicio 3

Resuelve estos ejercicios sobre subespacios vectoriales.

=== Ejercicio 3.a
<ejercicio-3.a>
Demuestra que el conjunto
$S = { (x , y , z , t) in bb(R)^4 med \| med 2 x + 2 y - t = 0 , y = 0 }$
es un subespacio vectorial de $bb(R)^4$. Calcula su dimensión y una
base.

=== Ejercicicio 3.b
<ejercicicio-3.b>
Sea el subespacio vectorial
$ T = { (1 , 2 , 3 , 4) , (0 , 1 , 0 , 0) , (1 , 0 , 2 , 0) } , $ calcula
su dimensión y una base.

=== Ejercicio 3.c
<ejercicio-3.c>
Obtén la dimensión y una base de los subespacios $S sect T$ y $S + T$.

== Ejercicio 4
<ejercicio-4>
Sea la matriz: $ M = mat(delim: "[", 1, - 2; 2, - 1; 4, 1) med . $

+ Comprueba que $M$ tiene columnas ortogonales.
+ Construye otra matriz $N$ añadiendo el vector
  $ee_3 = (1 , 0 , 0) med in bb(R)^3$ como última columna de $M$. Aplica
  el proceso de Gram-Schmidt a las columnas de $N$ para
  ortonormalizarlas.
+ Forma la matriz $A$ con las columnas de $N$ ortonormales y comprueba
  que $A$ es una matriz ortogonal (es decir, que $A^(⊺) A = I$).
+ Calcula las coordenadas del vector $(- 1 , - 3 , 2)$ en la base de
  $bb(R)^3$ formada por las columnas de $A$.
