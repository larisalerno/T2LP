-- ┌────────────────────────────────────────────────────┐
-- ׀Exercício 3 do Trabalho 2 de Linguagens             ׀
-- ׀Alunos: Gabriel Fanto,Larissa Salerno               ׀
-- ׀Defina a Função luhn :: [Int] -> Bool usando myMap  ׀
-- └────────────────────────────────────────────────────┘

-- Função Mymap
mymap :: (a -> b) -> (a -> b) -> [a] -> [b]
mymap _ _ [] = []
mymap funcA funcB (xs:xss) = funcA xs : mymap funcB funcA xss

luhnDouble :: [Int] -> [Int]
luhnDouble [] = []
luhnDouble xs =  if (head xs)*2 < 9 then (head xs)*2:luhnDouble (tail xs) else ((head xs)*2)-9: luhnDouble (tail xs)

main = print(luhnDouble [1,3,5,9,10])

luhn :: [Int] -> Bool
luhn xs = (sum (luhnDouble xs)) `mod` 10 == 0




