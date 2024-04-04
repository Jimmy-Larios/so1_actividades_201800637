## Actividad 7
##### Jimmy Larios | 201800637

#### Justicia
Una de las caracterís;cas clave del CFS es su obje;vo de proporcionar una asignación justa de la CPU a todos los procesos en ejecución. Esto significa que ningún proceso debería ser favorecido en detrimento de otros.

#### Modelo de tempo compar$do
El CFS u;liza un modelo de ;empo compar;do en el que cada proceso ob;ene una parte equita;va del ;empo de CPU disponible. Esto se logra mediante el seguimiento del ;empo de ejecución de cada proceso y ajustando dinámicamente las prioridades para mantener un equilibrio justo.

#### Prioridades dinámicas
A diferencia de otros algoritmos de planificación que u;lizan prioridades está;cas, el CFS asigna prioridades dinámicamente en función del ;empo de ejecución de cada proceso. Los procesos que han u;lizado menos ;empo de CPU ;enen prioridad sobre aquellos que han consumido más ;empo.

#### Modelo de programación por adelantado
El CFS opera en un modelo de programación por adelantado, lo que significa que intenta predecir cuánto ;empo de CPU necesitará cada proceso en el futuro y programarlo en consecuencia. Esto ayuda a evitar situaciones en las que un proceso pueda monopolizar la CPU durante períodos prolongados.

#### Implementación basada en árboles de intervalos rojos-negros 
El CFS implementa su planificación u;lizando árboles de intervalos rojos-negros, lo que permite una búsqueda eficiente de los procesos con el menor ;empo de ejecución restante.