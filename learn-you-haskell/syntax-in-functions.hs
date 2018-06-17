-- You can pattern match functiond declarations as follows
lucky :: (Integral a) => a -> String
lucky 7 = "LUCKY NUMBER SEVEN!"
lucky x = "Sorry, you are ouy of luck, pal!"

-- Match numbers 1-5 with string
sayMe :: (Integral a) => a -> String
sayMe 1 = "One!"
sayMe 2 = "Two!"
sayMe 3 = "Three!"
sayMe 4 = "Four!"
sayMe 5 = "Five!"
sayMe x = "Not between 1 and 5"

--pattern matching for factorial
factorial :: (Integral a) => a -> a
factorial 0 = 1
factorial n = n * factorial(n - 1)

--pattern match for tuples
addVectors :: (Num a) => (a, a) -> (a, a) -> (a, a)
addVectors (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

-- pattern match for list
-- let xs = [(1,3), (4,3), (2,4), (5,3), (5,6), (3,1)]
-- [a+b | (a,b) <- xs]

-- show elemtns of a list
tell :: (Show a) => [a] -> String
tell [] = "The list is empty"
tell (x:[]) = "The list has one element: " ++ show x
tell (x:y:[]) = "The list has two elements: " ++ show x ++ " and " ++ show y
tell (x:y:_) = "The list is too long. First two elements are:" ++ show x

-- Implement length
length' :: (Num b) => [a] -> b
length' [] = 0
length' (_:xs) = 1 + length' xs

-- Implement Capital
capital :: String -> String
capital "" = "Empty string, whoops!"
capital all@(x:xs) = "the first letter of " ++ all ++ " is " ++ [x]

-- Implement a berating BMI function with pattern matching and Guards
-- bmiTell :: (RealFloat a) => a -> String
-- bmiTell bmi
--     | bmi <= 18.5 = "You're underweight, you emo, you!"
--     | bmi <= 25.0 = "You're supposedly normal. Pffft, I bet you're ugly!"
--     | bmi <= 30.0 = "You're fat! Lose some weight, fatty!"
--     | otherwise   = "You're a whale, congratulations!"

bmiTell :: (RealFloat a) => a -> a -> String
-- bmiTell weight height
--     | weight / height ^ 2 <= 18.5 = "You're underweight, you emo, you!"
--     | weight / height ^ 2 <= 25.0 = "You're supposedly normal. Pffft, I bet you're ugly!"
--     | weight / height ^ 2 <= 30.0 = "You're fat! Lose some weight, fatty!"
--     | otherwise                 = "You're a whale, congratulations!"

bmiTell weight height
    | bmi <= 18.5 = "You're underweight, you emo, you!"
    | bmi <= 25.0 = "You're supposedly normal. Pffft, I bet you're ugly!"
    | bmi <= 30.0 = "You're fat! Lose some weight, fatty!"
    | otherwise                 = "You're a whale, congratulations!"
    where bmi = weight / height ^2


-- Implement a max function
max' :: (Ord a) => a -> a -> a
max' a b
    | a > b = a
    | otherwise = b

-- Where clauses
calcBmis :: (RealFloat a) => [(a, a)] -> [a]
calcBmis xs = [bmi w h | (w, h) <- xs]
    where bmi weight height = weight / height ^ 2


-- Describe a list
describeList :: [a] -> String
describeList xs = "The list is " ++ case xs of [] -> "empty."
                                               [x] -> "a singleton list"
                                               xs -> "a longer list"
