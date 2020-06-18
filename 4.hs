-- ┌────────────────────────────────────────┐
-- ׀Exercício 4 do Trabalho 2 de Linguagens ׀
-- ׀Alunos: Gabriel Fanto, Larissa Salerno  ׀
-- ׀Conversor de Numero Octal em Decimal    ׀
-- └────────────────────────────────────────┘

getString :: Char -> String
getString c = [c]

getInt :: String -> Int
getInt xs = read xs :: Int

octoCalc :: Int -> Int -> Int
octoCalc i value = value*(8^(i-1))

octalToDec :: String -> Int
octalToDec [] = 0
octalToDec xs = octoCalc (length xs) (getInt(getString (head xs))) + octalToDec (tail xs) 

testeGetString = print(getString '1')
testeGetInt = print(getInt "1")
testeOctalToDec = print(octalToDec "23")
