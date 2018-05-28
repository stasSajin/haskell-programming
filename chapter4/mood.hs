data Mood = Blah | Woot deriving Show

changeMood :: Mood -> Mood
changeMood Blah = Woot
changeMood    _ = Blah


-- Mistakes
-- The following functios contain Mistakes. Fix them.
-- 1. `not True && true` should be `not True && True`
-- 2. `not (x = 6)` should be `not (x == 6)` if x is defined
-- 3. `(1 * 2) > 5` is correct
-- 4. `[Merry] > [Happy]` should be `["Merry"] > ["Happy"]`
-- 5. [1, 2, 3] ++ "look at me!" should be ["1", "2", "3"] ++ ["look at me!"]
