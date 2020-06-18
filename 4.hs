-- ┌────────────────────────────────────────┐
-- ׀Exercício 4 do Trabalho 2 de Linguagens ׀
-- ׀Alunos: Gabriel Fanto, Larissa Salerno  ׀
-- ׀Conversor de Numero Octal em Decimal    ׀
-- └────────────────────────────────────────┘

getString :: Char -> String
getString c = [c]

testeValue :: [Char] -> Bool
testeValue [] = False
testeValue xs = if elem (head xs) ['a'..'z'] || elem (head xs) ['A'..'Z'] then True || testeValue (tail xs) else False || testeValue (tail xs)   

getInt :: String -> Int
getInt s = read s :: Int

octoCalc :: Int -> Int -> Int
octoCalc i value = value*(8^(i-1))

octalToDec :: String -> Int
octalToDec [] = 0
octalToDec xs = if (testeValue xs) == True then 0 else octoCalc (length xs) (getInt(getString (head xs))) + octalToDec (tail xs) 

testeOctalToDec = print(octalToDec "23")
