-- ┌──────────────────────────────────────────────────────────┐
-- ׀ Exercício 1 do Trabalho 2 de LP                          ׀
-- ׀ Alunos: Gabriel Fanto e Larissa Salerno                  ׀
-- ׀ Construa um Programa que Ordena em Ordem ascendente      ׀
-- ׀ de uma Lista de Listas a partir do tamanho das Sublistas ׀
-- └──────────────────────────────────────────────────────────┘

lgth :: [a] -> Int
lgth [] = 0
lgth (_:xs) = lgth xs + 1

mysort :: [[a]] -> [[a]]
mysort [] = []
mysort (xs:xss) = 
    mysort [xs' | xs' <- xss, (lgth xs') <= (lgth xs) ] ++ [xs] ++ mysort [xs' | 
    xs' <- xss, (lgth xs') > (lgth xs)]

main = print (mysort [[3,1,2],[2,1],[5,7,1,2],[11]])
