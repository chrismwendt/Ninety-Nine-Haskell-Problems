-- Reverse a list.

reverse' [] = []
reverse' (x:xs) = reverse' xs ++ [x]
