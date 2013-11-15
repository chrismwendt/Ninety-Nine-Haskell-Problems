-- Find the last but one element of a list.

secondToLast [] = error "secondToLast of empty list"
secondToLast [x] = error "secondToLast of list of length 1"
secondToLast [a,b] = a
secondToLast (x:xs) = secondToLast xs
