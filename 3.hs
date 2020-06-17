-- ┌────────────────────────────────────────────────────┐
-- ׀Exercício 3 do Trabalho 2 de Linguagens             ׀
-- ׀Alunos: Gabriel Fanto,Larissa Salerno               ׀
-- ׀Defina a Função luhn :: [Int] -> Bool usando myMap  ׀
-- └────────────────────────────────────────────────────┘

-- Função Mymap
-- mymap :: (a -> b) -> (a -> b) -> [a] -> [b]
-- mymap _ _ [] = []
-- mymap funcA funcB (xs:xss) = funcA xs : mymap funcB funcA xss

-- Multiplicador da Função Luhn
luhnDouble :: Int -> [Int] -> [Int]
luhnDouble x xs | value < 9 = value:(drop 1 xs)
                | otherwise = value - 9:(drop 1 xs) 
                  where
                    value = x * 2


-- main = print(luhnDouble 2 [1,2,3,4])

luhn :: [Int] -> Int
luhn xs = (sum (luhnDouble (head xs) xs )

main = print(luhn [1,2,3,4])

