-- ┌────────────────────────────────────────┐
-- ׀Exercício 4 do Trabalho 2 de Linguagens ׀
-- ׀Alunos: Gabriel Fanto, Larissa Salerno  ׀
-- ׀Conversor de Numero Octal em Decimal    ׀
-- └────────────────────────────────────────┘

getString :: Char -> String
getString c = [c]

testeValue :: String -> Bool
testeValue n = elem n ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","X","Y","W","Z","a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","x","y","w","z"] 

getInt :: String -> Int
getInt s = if (testeValue s) == False then read s :: Int else -1

octoCalc :: Int -> Int -> Int
octoCalc i value = value*(8^(i-1))

octalToDec :: String -> Int
octalToDec [] = 0
octalToDec xs = if (getInt(getString(head xs))) == -1 then octalToDec (drop (length xs) xs ) else octoCalc (length xs) (getInt(getString (head xs))) + octalToDec (tail xs) 

testeOctalToDec = print(octalToDec "23")
