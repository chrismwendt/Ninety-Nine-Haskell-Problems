-- Eliminate consecutive duplicates of list elements.

compress [] = []
compress [x] = [x]
compress (a:b:xs)
    | b == a = compress (a:xs)
    | otherwise = a : compress (b:xs)
