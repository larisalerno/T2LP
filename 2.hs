-- ┌────────────────────────────────────────────────────────────┐
-- ׀Exercício 2 do Trabalho 2 de Linguagens                     ׀
-- ׀Alunos:Gabriel Fanto,Larissa Salerno                        ׀
-- ׀Defina a Função myMap :: (a -> b) -> (a -> b) -> [a] -> [b] ׀
-- └────────────────────────────────────────────────────────────┘

mymap :: (a -> b) -> (a -> b) -> [a] -> [b]
mymap _ _ [] = []
mymap funcA funcB (xs:xss) = funcA xs : mymap funcB funcA xss

main = print(mymap (+3) (*10) [0,1,2,3,4,11])
