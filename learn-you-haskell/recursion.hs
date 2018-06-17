-- Recursive Maximum
maximum' :: (Ord a) => [a] -> a
maximum' [] = error "maximum of empty list"
maximum' [x] = x
maximum' (x:xs)
    | x > maxTail = x
    | otherwise = maxTail
    where maxTail = maximum' xs

-- Recusrive Replication
replicate' :: (Num i, Ord i) => i -> a -> [a]
replicate' n x
    | n<=0 = []
    | otherwise = x:replicate' (n-1) x


-- Recursive Take
take' :: (Num i, Ord i) => i -> [a] -> [a]
take' n _
    | n<=0 = []
take' _ [] = []
take' n (x:xs) = x: take' (n-1) xs


-- Recursive Reverse
reverse' :: [a] -> [a]
reverse' [] = []
reverse' (x:xs) = reverse' xs ++ [x]


-- Recursive Repeat
repeat' :: a -> [a]
repeat' x = x:repeat' x


-- Recursive Zip
zip' :: [a] -> [b] -> [(a, b)]
zip' _ []  = []
zip' [] _ = []
zip' (x:xs) (y:ys) = (x, y):zip' xs ys


-- Recursive elem
elem' :: (Eq a) => a -> [a] -> Bool
elem' a [] = False
elem' a (x:xs)
  | a == x = True
  | otherwise = elem' a xs

-- Recusrive quicksort
quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) =
  let smallerSorted = quicksort [a | a <- xs, a<=x]
      biggerSorted = quicksort [a | a <- xs, a>x]
  in smallerSorted ++ [x] ++ biggerSorted
