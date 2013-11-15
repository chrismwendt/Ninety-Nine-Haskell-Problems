-- Find the number of elements of a list.

length' [] = 0
length' (x:xs) = 1 + length xs
