module Main where

main :: IO ()
main = do
  print $ sum $ [x | x <- [0..999], multipleAny x [3,5]]

multipleAny :: Int -> [Int] -> Bool
multipleAny x [] = False
multipleAny x (y:ys)
  | x `mod` y == 0 = True
  | otherwise = multipleAny x ys
