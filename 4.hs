-- ┌────────────────────────────────────────┐
-- ׀Exercício 4 do Trabalho 2 de Linguagens ׀
-- ׀Alunos: Gabriel Fanto, Larissa Salerno  ׀
-- ׀Conversor de Numero Octal em Decimal    ׀
-- └────────────────────────────────────────┘


octalToDec :: String -> Int
octalToDec string = getInt (string !! 2)

main = print(octalToDec "101")
