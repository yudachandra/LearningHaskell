import Control.Monad (liftM, liftM2)

-- lift = fmap yg berjalan di monad
plusM2 :: [Int] -> [Int] -> [Int]
plusM2 = liftM2 (+)

plusM :: [Int] -> [Int]
plusM = liftM (+1) -- bisa use fmap juga