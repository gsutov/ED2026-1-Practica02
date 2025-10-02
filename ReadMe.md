# Estructuras Discretas 2026-1

## Práctica 2

Para trabajar sobre esta base, tienen que hacer un fork de este repositorio y trabajar sobre él.

Únicamente modifiquen el archivo Practica02.hs que se encuentra en el directorio src. Si quieren modificar las pruebas o agregar más, pueden preguntarme con confianza y les explico como modificarlas.

Deben tener instalado el compilador de Haskell para poder probar su práctica. Para ello deben colocarse en el directorio src y ejecutar el comando `ghci Practica02.hs`.

Si quieren probar su práctica haciendo uso de las pruebas unitarias que les estoy pasando, tienen que ejecutar los siguientes comandos desde el directorio donde se encuentra este ReadMe:
```
cabal build
cabal test
```

El primero es para compilar y el segundo es para ejecutar las pruebas unitarias.

Si no les llegan a funcionar, es posible que el problema es que tengan una versión diferente de cabal. Si es el caso, modifiquen el archivo .cabal con la version que tiene o escribanme para que les diga cuáles líneas modificar.

## Integrantes

En esta sección deben eliminar esta línea de texto, borrar la leyenda "Integrante n" y escribir su nombre empezando por apellidos y su número de cuenta.

+ Ismael Alejandro Mendoza Rodríguez
    - No. de Cuenta: 320022405
+ Evelyn Vianey Mondragón Ceballos
    - No. de Cuenta: 323157814
+ Botello Salcido Gustavo
    - No. de Cuenta: 323177308

## Comentarios
Intente ejecutar el archivo de tests, pero no funciono, me salio lo siguiente:

gusdlhx@fedora:~/ED2026-1-Practica02$ cabal build
cabal test
Resolving dependencies...
Error: cabal: Could not resolve dependencies:
[__0] trying: Practica02-0.1.0.0 (user goal)
[__1] next goal: base (dependency of Practica02)
[__1] rejecting: base-4.18.2.1/installed-4.18.2.1 (conflict: Practica02 =>
base^>=4.21.0.0)
[__1] rejecting: base-4.21.0.0, base-4.20.2.0, base-4.20.1.0, base-4.20.0.1,
base-4.20.0.0, base-4.19.2.0, base-4.19.1.0, base-4.19.0.0, base-4.18.3.0,
base-4.18.2.1, base-4.18.2.0, base-4.18.1.0, base-4.18.0.0, base-4.17.2.1,
base-4.17.2.0, base-4.17.1.0, base-4.17.0.0, base-4.16.4.0, base-4.16.3.0,
base-4.16.2.0, base-4.16.1.0, base-4.16.0.0, base-4.15.1.0, base-4.15.0.0,
base-4.14.3.0, base-4.14.2.0, base-4.14.1.0, base-4.14.0.0, base-4.13.0.0,
base-4.12.0.0, base-4.11.1.0, base-4.11.0.0, base-4.10.1.0, base-4.10.0.0,
base-4.9.1.0, base-4.9.0.0, base-4.8.2.0, base-4.8.1.0, base-4.8.0.0,
base-4.7.0.2, base-4.7.0.1, base-4.7.0.0, base-4.6.0.1, base-4.6.0.0,
base-4.5.1.0, base-4.5.0.0, base-4.4.1.0, base-4.4.0.0, base-4.3.1.0,
base-4.3.0.0, base-4.2.0.2, base-4.2.0.1, base-4.2.0.0, base-4.1.0.0,
base-4.0.0.0, base-3.0.3.2, base-3.0.3.1 (constraint from non-upgradeable
package requires installed instance)
[__1] fail (backjumping, conflict set: Practica02, base)
After searching the rest of the dependency tree exhaustively, these were the
goals I've had most trouble fulfilling: base, Practica02

Resolving dependencies...
Error: cabal: Could not resolve dependencies:
[__0] trying: Practica02-0.1.0.0 (user goal)
[__1] next goal: base (dependency of Practica02)
[__1] rejecting: base-4.18.2.1/installed-4.18.2.1 (conflict: Practica02 =>
base^>=4.21.0.0)
[__1] rejecting: base-4.21.0.0, base-4.20.2.0, base-4.20.1.0, base-4.20.0.1,
base-4.20.0.0, base-4.19.2.0, base-4.19.1.0, base-4.19.0.0, base-4.18.3.0,
base-4.18.2.1, base-4.18.2.0, base-4.18.1.0, base-4.18.0.0, base-4.17.2.1,
base-4.17.2.0, base-4.17.1.0, base-4.17.0.0, base-4.16.4.0, base-4.16.3.0,
base-4.16.2.0, base-4.16.1.0, base-4.16.0.0, base-4.15.1.0, base-4.15.0.0,
base-4.14.3.0, base-4.14.2.0, base-4.14.1.0, base-4.14.0.0, base-4.13.0.0,
base-4.12.0.0, base-4.11.1.0, base-4.11.0.0, base-4.10.1.0, base-4.10.0.0,
base-4.9.1.0, base-4.9.0.0, base-4.8.2.0, base-4.8.1.0, base-4.8.0.0,
base-4.7.0.2, base-4.7.0.1, base-4.7.0.0, base-4.6.0.1, base-4.6.0.0,
base-4.5.1.0, base-4.5.0.0, base-4.4.1.0, base-4.4.0.0, base-4.3.1.0,
base-4.3.0.0, base-4.2.0.2, base-4.2.0.1, base-4.2.0.0, base-4.1.0.0,
base-4.0.0.0, base-3.0.3.2, base-3.0.3.1 (constraint from non-upgradeable
package requires installed instance)
[__1] fail (backjumping, conflict set: Practica02, base)
After searching the rest of the dependency tree exhaustively, these were the
goals I've had most trouble fulfilling: base, Practica02
