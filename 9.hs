-- Pack consecutive duplicates of list elements into sublists. If a list contains repeated elements they should be placed in separate sublists.

pack [] = []
pack (x:xs) = left : pack right
    where (left,right) = span (== x) (x:xs)
