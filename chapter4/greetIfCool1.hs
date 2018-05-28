module GreetIfCool1 where

greedIfCool :: String -> IO()
greedIfCool coolness =
  if cool
    then putStrLn "eyyyy. What's shaking'?"
  else
    putStrLn "pshhh."
  where cool =
          coolness == "downright frosty yo"
