-- Find the K'th element of a list. The first element in the list is number 1.

elementAt l n
    | n < 1 = error "elementAt index before start of list"
    | null l = error "elementAt index after end of list"
    | n == 1 = head l
    | otherwise = elementAt (tail l) (n - 1)
