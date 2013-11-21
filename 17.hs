-- Split a list into two parts; the length of the first part is given.

split [] n
    | n < 0 = error "negative index"
    | otherwise = error "index too large"
split xss@(x:xs) n
    | n == 0 = ([], xss)
    | otherwise = (x : left, right)
    where (left, right) = split xs (n - 1)

split' = flip splitAt
