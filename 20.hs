-- Remove the K'th element from a list.

removeAt l n = (e, left ++ tail right)
    where
        (left, right) = splitAt (n - 1) l
        e = head right
