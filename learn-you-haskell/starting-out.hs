-- Haskell denotes function application with spaces rather than parantheses like most other languages
-- `bar (bar 3)` vs bar(bar(3))

-- First Functions
doubleMe x = x + x
-- doubleUs x y = x*2 + y*2
doubleUs x y = doubleMe x + doubleMe y

-- Haskell's if statements
doubleSmallNumber x = if x > 100
                      then x
                      else x*2

doubleSmallNumber' x = (if x > 100
                      then x
                      else x*2) + 1

-- List comprehentions
boomBangs xs = [if x <10 then "BOOM" else "BANG!" | x <- xs, odd x]
removeNonUppercase st = [c | c <- st, c `elem` ['A'..'Z']]

-- which right triangle that has integers for all sides and all sides equal to or smaller than 10 has a perimeter of 24?
rightTriangles = [ (a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b] , a^2+b^2==c^2, a+b+c==24]
