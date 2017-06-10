module Main where

main :: IO ()
main = do
  print $ sum $ [x | x <- fibMax 4000000, even x]

fibMax n
  | n == 1 = [1]
  | n == 2 = [1, 2]
  | otherwise = fibMax' n [1, 2]
  where
    fibMax' n xs
      | newFib > n = xs
      | otherwise = fibMax' n $ xs ++ [newFib]
      where
        newFib = last xs + last (init xs)
