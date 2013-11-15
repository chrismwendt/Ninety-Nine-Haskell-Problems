-- Find the last element of a list.

last' [] = error "last' of empty list"
last' [x] = x
last' (x:xs) = last' xs
