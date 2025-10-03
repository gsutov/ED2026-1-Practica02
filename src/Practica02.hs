module Practica02 where

-- BINARIOS
data Bit = O | I 
        deriving (Show, Eq)

type Binario = [Bit]

concatena :: [a] -> [a] -> [a]
concatena [] ys = ys
concatena (x:xs) ys = x : concatena xs ys

reversa :: [a] -> [a]
reversa [] = []
reversa (x:xs) = concatena (reversa xs) [x]

-- Dado un número binario, esta función debe calcular el valor decimal de ese número.
toDecimal :: Binario -> Int
toDecimal bits = aux (reversa bits)
  where
    aux [] = 0
    aux (I:resto) = 2 * aux resto + 1
    aux (O:resto) = 2 * aux resto

-- Dados número en representación decimal, esta función debe devolver la representación binaria de ese número.
toBin :: Int -> Binario
toBin 0 = [O]
toBin n = reversa (aux n)
  where
    aux 0 = []
    aux k
      | k `mod` 2 == 0 = O : aux (k `div` 2)
      | otherwise      = I : aux (k `div` 2)

incremento :: Binario -> Binario
incremento [] = [I]
incremento (O:xs) = I : xs
incremento (I:xs) = O : incremento xs

suma :: Binario -> Binario -> Binario
suma xs ys = reversa (sumaAux (reversa xs) (reversa ys))
  where
    sumaAux [] [] = []
    sumaAux [] ys = ys
    sumaAux xs [] = xs
    sumaAux (O:xr) (O:yr) = O : sumaAux xr yr
    sumaAux (O:xr) (I:yr) = I : sumaAux xr yr
    sumaAux (I:xr) (O:yr) = I : sumaAux xr yr
    sumaAux (I:xr) (I:yr) = O : sumaAux (incremento xr) yr
-- LISTAS
palindromo :: (Eq a) => [a] -> Bool
palindromo xs = xs == reversa xs

contiene :: (Eq a) => [a] -> a -> Bool
contiene [] _ = False
contiene (x:xs) y = x == y || contiene xs y

diferenciaSimetrica :: (Eq a) => [a] -> [a] -> [a]
diferenciaSimetrica xs ys = [x | x <- xs, not (contiene ys x)] 
                         ++ [y | y <- ys, not (contiene xs y)]

--Conjunto potencia
--Dada una lista, esta función debe calcular el conjunto potencia de la lista ingresada
conjuntoPotencia :: [a] -> [[a]]
conjuntoPotencia [] = [[]]
conjuntoPotencia (x:xs) = [x:ys | ys <- conjuntoPotencia xs] ++ conjuntoPotencia xs
--LISTAS DE LONGITUD PAR
--Esta va de regalo
type ListaPar a b = [(a,b)]

--Longitud
--La función debe recibir una lista de pares y devolver la longitud
longitud :: ListaPar a b -> Int
longitud [] = 0
longitud (_:xs) = 2 + longitud xs

--Map
{-
La función map en Haskell aplica una función dada a cada elemento de una lista
y devuelve una nueva lista con los resultados. 
En este caso, la función myMap debe recibir dos funciones, 
aplica la función f al primer elemento y la función g al segundo elemento de cada par en la lista xs, 
devolviendo una nueva lista de pares con los resultados.
-}
myMap :: (a -> c) -> (b -> d) -> ListaPar a b -> ListaPar c d
myMap _ _ [] = []
myMap f g ((x,y):xs) = (f x, g y) : myMap f g xs

--Sumar pares
{-
La función debe recibir una lista de pares y devolver una tupla. La primer entrada de la tupla
debe ser el resultado de sumar la primer entrada de cada par de la lista, la segunda entrada
debe ser el resultado de sumar la segunda entrada de todos los pares de la lista.
-}
sumaPares :: (Num a, Num b) => ListaPar a b -> (a,b)
sumaPares [] = (0,0)
sumaPares ((x,y):xs) =
    let (sx,sy) = sumaPares xs
    in (x + sx, y + sy)

--Filtrar pares
--Investigar la función filter y trasladar la idea sobre las listas definidas en esta sección.
myFilter :: ((a,b) -> Bool) -> ListaPar a b -> ListaPar a b
myFilter _ [] = []
myFilter p (x:xs) = 
        if p x 
                then x : myFilter p xs
                else myFilter p xs