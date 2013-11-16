-- Eliminate consecutive duplicates of list elements.

compress [] = []
compress [x] = [x]
compress (a:b:xs)
    | b == a = compress (a:xs)
    | otherwise = a : compress (b:xs)

compress' l = foldr compressor [] l
    where compressor a b
            | null b || head b /= a = a : b
            | otherwise = b
