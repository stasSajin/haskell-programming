-- Exercise 1.1
half x = x / 2
square x = x * x
-- Expercise 1.2
circleArea x = 3.14 * x^2
-- Exercise 1.3
circleArea2 x = pi * x^2


mult1 = x * y
  where x = 5
        y = 6

mult2 = x * 2 + y
  where x = 3
        y = 1000

mult3 = x * 5
  where y = 10
        x = 10 * 5 + y

mult4 = z / x + y
  where x = 7
        y = negate x
        z = y * 10

-- Chapter exercises
-- Parenthesization
-- 1.1
-- 2 + (2 * 3) - 1
-- 10^(1+1)
-- (2^2)*(4^5)+1


-- Equivalent Expressions
-- 1. true
-- 2. true (10^2 = 100; 10+9*10 == 100)
-- 3. false (400-37=363; (-) 37 400 = -363)
-- 4. false (div rounds to zero the remainder)
-- 5. false (2 * 5 + 18 = 28; 2 * (5 + 18) = 46)

-- Functions
-- 1. 10 + waxOn = 1125; (+10) waxOn = 1125; (-) 15 waxOn = -1110; (-) waxOn 15 == 1110
-- 2. triple waxOn evaluates to 3375
-- 3
waxOn = x * 5
  where z = 7
        x = y ^ 2
        y = z + 8

triple x = x * 3

waxOff x = triple x
