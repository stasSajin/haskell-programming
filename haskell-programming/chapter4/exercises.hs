awesome = ["Papuchon", "curry", ":)"]
also = ["Quake", "The Simons"]
allAwesome = [awesome, also]
--
-- 1. Given the definition of length above, what would the type signature
-- be? How many arguments, of what type does it take? What
-- is the type of the result it evaluates to?
-- `Takes in a foldable and returns an Int`

-- 2. What are the results of the following expressions?
-- length [1, 2, 3, 4, 5] -> 5
-- length [(1, 2), (2, 3), (3, 4)] -> 3
-- length allAwesome -> 2
-- length (concat allAwesome) -> 5

-- 3.
-- 6 / 3 returns as float because Haskell interprets the expression as Type Num.
-- 6 / length [1, 2, 3] return error because length return a type Int, which is not fractional.

-- 4.
-- 6 `div` length[1, 2, 3]

-- 5. 2 + 3 == 5 return True, (==) is an infix operator, so we evaluate (2+3) first to 5 and then
-- 5 == 5

-- 6. Type: Bool. The expected result is False

-- 7.
-- length allAwesome == 2; will work and evaluate to True
-- length [1, 'a', 3, 'b'] will not work because of mixed types
-- length allAwesome + length awesome will work and return 5
-- (8 == 8) && ('b' < 'a') will return False because a comes before b
-- (8 == 8) && 9 will error because && should be applied to (Bool, Bool) not (Bool, Num)

-- 8. Write a function that tells you whether or not a given String (or
-- list) is a palindrome. Here you’ll want to use a function called
-- reverse a predefined function that does what it sounds like.
isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome x = x == reverse(x)


-- 9. Write a function to return the absolute value of a number using
-- if-then-else
myAbs :: Integer -> Integer
myAbs x = if x >= 0 then x else (negate x)

-- 10. Fill in the definition of the following function, using fst and
-- snd:
f :: (a, b) -> (c, d) -> ((b, d), (a, c))
f a b = ((snd a, snd b), (fst a, fst b))

-- Correcting Syntax
-- 1.
x = (+)
addOne xs = w `x` 1
    where w = length xs

-- 2.
myId = \x -> x

-- 3.
retrunFirst (a, b) = a

-- Match function names to their types
-- 1. c
-- 2. b
-- 3. a
-- 4. d

 
