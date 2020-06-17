-- ┌────────────────────────────────────────────────────┐
-- ׀Exercício 3 do Trabalho 2 de Linguagens             ׀
-- ׀Alunos: Gabriel Fanto,Larissa Salerno               ׀
-- ׀Defina a Função luhn :: [Int] -> Bool usando myMap  ׀
-- └────────────────────────────────────────────────────┘

luhnDouble :: Int -> Int
luhnDouble n | doubleDigit < 9 = doubleDigit
             | otherwise = doubleDigit - 9
						   where
							   doubleDigit = n * 2

luhn :: [Int] -> Bool
luhn xs = luhnDouble (head xs) * luhn (drop ()) 
-- TODO: fazer com que luhn seja recursivo, multiplicando todos os valores da lista

