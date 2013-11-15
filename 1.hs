-- Find the last element of a list.

last' [] = error "last' of empty list"
last' (x:xs)
    | null xs = x
    | otherwise = last' xs
