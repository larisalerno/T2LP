myMap :: (a -> b) -> (a -> b) -> [a] -> [b]
myMap _ _ [] = []
myMap funcA funcB (xs:xss) = funcA xs : myMap funcB funcA xss 