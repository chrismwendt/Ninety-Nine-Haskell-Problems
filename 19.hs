-- Rotate a list N places to the left.

rotate l n = right ++ left
    where (left, right) = splitAt (n `mod` length l) l

rotate'' l n = uncurry (flip (++)) $ splitAt (n `mod` length l) l
