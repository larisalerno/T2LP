lgth :: [a] -> Int
lgth [] = 0
lgth (_:xs) = lgth xs + 1

mysort :: [[a]] -> [[a]]
mysort [] = []
mysort (xs:xss) = 
    mysort [xs' | xs' <- xss, (lgth xs') <= (lgth xs) ] ++ [xs] ++ mysort [xs' | 
    xs' <- xss, (lgth xs') > (lgth xs)]
    
