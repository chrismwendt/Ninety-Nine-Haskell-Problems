-- Insert an element at a given position into a list.

insertAt e l n = left ++ [e] ++ right where
    (left, right) = splitAt (n - 1) l
