-- Find the last but one element of a list.

secondToLast [] = error "secondToLast of empty list"
secondToLast [_] = error "secondToLast of list of length 1"
secondToLast [a,_] = a
secondToLast (_:xs) = secondToLast xs
