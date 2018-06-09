-- 1. These lines of code are from a REPL session. Is 𝑦 in scope for 𝑧?
-- Prelude> let x = 5
-- Prelude> let y = 7
-- Prelude> let z = x * y

-- yes, because z is evaluated after x and y in the same environment

-- 2. These lines of code are from a REPL session. Is ℎ in scope for
-- 𝑔? Go with your gut here.
-- Prelude> let f = 3
-- Prelude> let g = 6 * f + h

-- no, h was no declared, so it is not in scope

-- 3. This code sample is from a source file. Is everything we need
-- to execute area in scope?
-- area d = pi * (r * r)
-- r = d / 2

-- no, d and r would not be considered in scope

-- 4. This code is also from a source file. Now are 𝑟 and 𝑑 in scope
-- for area?
-- area d = pi * (r * r)
--   where r = d / 2
-- yes, this would be considered in scope since d evaluates to d = pi (d/2 * d/2)


-- SYNTAX ERRORS
-- 1. ++ [1, 2, 3] [4, 5, 6] should be [1, 2, 3] ++ [4, 5, 6]
-- 2. '<3' ++ ' Haskell' should be "<3" ++ " Haskell"
-- 3. concat ["<3", " Haskell"] is correct


-- BUILDING FUNCTIONS
curry1 a = a ++ "!"
curry2 b = drop 4 (take 5 b)
curry3 c = drop 7 c

-- ex 3
thirdLetter :: String -> String
thirdLetter x = drop 2 (take 3 x)


-- ex 4
letterIndex :: Int -> Char
letterIndex x = "Curry is awesome" !! x
