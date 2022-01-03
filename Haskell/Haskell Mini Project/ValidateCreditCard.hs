{-# OPTIONS_GHC -Wno-overlapping-patterns #-}
{-# OPTIONS_GHC -Wno-incomplete-patterns #-}
import Data.Char


--Function Number 1, cnts(creditNoToString)
cnts :: Integer -> [Integer]
cnts 0 = []
cnts x = cnts (x `div` 10) ++ [x `mod` 10] -- Arrange Digits to Array

dropLast :: Integer -> [Integer]
dropLast x = take (length (cnts x) - 1) (cnts x)

--Function Number 2, Reverse
cnRev :: Integer -> [Integer]
cnRev n = reverse $ dropLast n

n :: Integer
n = error "not implemented"

--Function Number 3, Multiply Odd Digits
multiplyBy2Odd :: (Integer, Integer) -> Integer
multiplyBy2Odd (index, n)
    | odd index = n * 2
    | otherwise          = n

doubleEveryOther :: [Integer] -> [Integer]
doubleEveryOther [] = []
doubleEveryOther v = map multiplyBy2Odd (zip [1..] v)

--Function Number 4, Substract Digits More Than 9
subsMoreThan9 :: (Integer, Integer) -> Integer
subsMoreThan9 (index, n)
    | n > 9 = n - 9
    | otherwise          = n

plotMoreThan9 :: [Integer] -> [Integer]
plotMoreThan9 [] = []
plotMoreThan9 v = map subsMoreThan9 (zip [1..] v)

--Function Number 5, Add all numbers together
sumDigits :: [Integer] -> Integer
sumDigits []     = 0
sumDigits (x:xs) = sum (cnts x) + sumDigits xs

validate :: Integer -> Bool
validate creditNo = digitSum `mod` 10 == 0
    where
        digitSum = (sumDigits $ plotMoreThan9 $ doubleEveryOther $ cnRev creditNo) + last (cnts creditNo)

--Function Number 7, Validate Number
isValid :: Integer -> String
isValid creditNo = 
    if validate creditNo then "Great! Your credit card number " ++ show creditNo ++ " is valid!" 
    else "Credit card number " ++ show creditNo ++ " is invalid."

main = do
    putStrLn "Hello, please Input your Credit Card Number"
    creditNo <- fmap read getLine -- String to Int
    
    print "Step 1, Drop last digit from the number. Let's call this the check digit"
    print (dropLast creditNo)
    print "Step 2, Reverse the numbers"
    print (cnRev creditNo)
    print "Step 3, Multiply the digits in odd positions (1,3,5, etc.) by 2"
    print (doubleEveryOther $ cnRev creditNo)
    print "Step 4, Subtract 9 to all any result higer than 9"
    print (plotMoreThan9 $ doubleEveryOther $ cnRev creditNo)
    print "Step 5, Add all the numbers together"
    print (sumDigits $ plotMoreThan9 $ doubleEveryOther $ cnRev creditNo)
    print "Step 6, Add the check digit to the sum"
    print ((sumDigits $ plotMoreThan9 $ doubleEveryOther $ cnRev creditNo) + last (cnts creditNo))
    print "Step 7, Check if the total sum can be divided by 10"
    putStrLn $ isValid creditNo
    