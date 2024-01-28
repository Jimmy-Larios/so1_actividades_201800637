### Jimmy Daniel Larios Martínez
### 201800637




#### Tipos de kernel y sus diferencias
##### Kernel monolítico
En un kernel monolítico, todas las funciones del sistema operativo se ejecutan en el mismo espacio de memoria y comparten un único núcleo central.
Características:
- Mayor eficiencia en términos de rendimiento ya que no hay costos de comunicación entre módulos.
- Menor sobrecarga de cambio de contexto, ya que las funciones del kernel comparten el mismo espacio de memoria.
- Ejemplos: Linux, UNIX.

##### Kernel microkernel
Un kernel microkernel se diseña para ser pequeño y básico, delegando la mayoría de las funciones del sistema operativo a procesos independientes conocidos como "servidores" que se ejecutan fuera del núcleo.
Características:
- Mayor modularidad y extensibilidad, ya que las funciones se implementan como servidores independientes.
- Mayor estabilidad, ya que los fallos en un servidor no afectan directamente al núcleo.
- Ejemplos: MINIX, QNX.

##### Kernel híbrido
Un kernel híbrido combina características de los kernels monolíticos y microkernels, buscando equilibrar eficiencia y modularidad.
Características:
- Algunas funciones esenciales se ejecutan en el espacio del kernel, mientras que otras se implementan como módulos separados.
- Ofrece una mayor flexibilidad para adaptarse a diferentes requisitos del sistema.
- Ejemplos: Windows NT/2000/XP/7/10.

#### User mode vs Kernel mode
|                                  | User mode | Kernel mode                                                  |
|----------------------------------|----------|--------------------------------------------------------------|
| Interrupción                     | Solo un proceso falla si existe una interrupción.   | Todo el sistema operativo se cae si existe una interrupción. |
| Acceso a recursos                | El programa no tiene acceso directo a los recursos del sistema.   | El programa tiene acceso sin restricciones a los recursos del sistema.                                                             |
| Espacio de direcciones virtuales | Cada proceso tiene su propio espacio de direcciones virtuales.   | Todos los procesos comparten un solo espacio de direcciones virtuales.                                                       |
| Fallos del sistema               | Un fallo se recupera simplemente reanudando la sesión.   | Un fallo en el sistema es grave y complica las cosas.                                                       |
| Referencias de memoria           | Solo puede hacer referencias a la memoria asignada para el modo usuario.   | Es capaza de referenciar ambas áreas de memoria.                                                       |
| Restricciones                    | El usuario necesita permiso para acceder a los programas del kernel.   | No hay restricciones.                                                       |


#### Interruptions vs Traps
##### Interruption
Un interrupt es una señal asincrónica enviada por un dispositivo de hardware o por el propio procesador para indicar que necesita atención inmediata del sistema operativo.

##### Trap
Un trap es una instrucción de software que genera una interrupción intencionalmente para llamar a un servicio del sistema operativo.
| Trap  | Interrupt |
|-------|-----------|
| Proceso sincrónico | Proceso asincrónico    |
| Señal emitida por un programa de usuario | Señal emitida por el hardware de un dispositivo    |
| Puede ocurrir solo desde el software de un dispositivo | Puede ocurrir desde el hardware o software de un dispositivo    |
| Solo es generada por una instrucción de un programa de usuario | Puede ser generada por el sistema operativo y por un programa de usuario    |
| Son un subconjunto de Interrupt | Son el superconjunto de traps    |
| Ejecutan una función específica en el sistema operativo y dan el control al trap handler | Forzan al CPU a lanzar una runtina de manejo de interrupciones específica.      |
