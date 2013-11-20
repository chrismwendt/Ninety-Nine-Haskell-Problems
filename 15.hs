-- Replicate the elements of a list a given number of times.

repli l n = concatMap (replicate n) l
