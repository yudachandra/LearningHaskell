-- -- WRITER
-- import Control.Monad.Trans.Writer (Writer, writer, runWriter, tell)

-- logNumber :: Int -> Writer [String] Int 
-- logNumber x = writer (x, ["Got Number : " ++ show x])

-- mulWithLog :: Writer [String] Int 
-- mulWithLog = do
--     a <- logNumber 3
--     b <- logNumber 5
--     tell ["Gonna multiply this number "]
--     return (a * b)

-- resultWithLog :: Writer String Int 
-- resultWithLog = writer (1 + 2 ^ 10, "adding and multiplying")

-- main :: IO ()
-- main = do
--         putStrLn  "Log the process"
--         putStrLn log -- display the text
--         print result -- display the number
--         where
--             (result, log) = runWriter resultWithLog

import Control.Monad.Trans.Writer.Lazy as W

output :: String -> W.Writer  [String] ()
output x = W.tell [x]

gcd' :: Int -> Int -> W.Writer [String] Int
gcd' a b
    | b == 0 = do
        output ("Finished with " ++ show a)
        return a
    | otherwise = do
        output (show a ++ " mod " ++ show b ++ " = " ++ show (a `mod` b))
        gcd' b (a `mod` b)

main :: IO ()
main = mapM_ putStrLn $ snd $ W.runWriter (gcd' 8 3) -- mapM_ untuk ignore, dan snd untuk take second result
-- mapM show [1,2]
-- mapM_ show [1,2]