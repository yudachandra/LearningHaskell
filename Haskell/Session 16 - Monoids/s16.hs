import Data.Monoid

anotherMap :: [Integer]
anotherMap = map (+1) [1,2,3]

cetak :: Show a => a -> IO()
cetak x = print x

anotherFM :: IO()
anotherFM = foldMap cetak [1,2,3]

-- monoid law
-- mempty <> x == x
-- x <> mempty == x
-- (x <> y) <> z == x <> (y <> z)

-- Just (Product 4) <> Just (Product 5)
-- hasilnya Just (Product {getProduct = 20})

-- ghci > mconcat [Just $ Sum 2, Just $ Sum 3, Nothing, Just $ Sum 10, Nothing]
-- hasil Just 15