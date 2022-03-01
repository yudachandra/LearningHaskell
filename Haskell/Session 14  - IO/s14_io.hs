import GHC.Base (VecElem(Int16ElemRep, DoubleElemRep))
import System.Posix.Internals (puts)
main :: IO()
-- main = putStrLn "Hello, Haskell!"
-- main = putStrLn "Hello" >> putStrLn "world!"

-- :t (>>)
-- Just 10 >> Just 20
-- pure 2 >> pure 5
-- Nothing >> Just 6

-- :t (>>=)
main = putStr "What is your name?"
        >> getLine
        >>= \a -> putStr "How old are you?"
        >> getLine
        >>= \b -> print (a,b)


main' :: IO()
main' = putStrLn "Hello" >> putStrLn "world!"

-- dengan do menjadi
-- main = do
--         putStr "What is your name?"
--         a <- getLine
--         putStr "How old are you?"
--         b <- getLine
--         print (a,b)

main'' :: IO()
main'' = do
            let demoInt = read "100" :: Int
            let demoDouble = read "100" :: Double
            print demoInt
            print demoDouble

readAInt :: IO Int 
readAInt = readLn 

readABool :: IO Bool 
readABool = readLn

main''' :: IO()
main''' = putStrLn "Please enter a number: "
            >> (readLn >>= (\n -> putStrLn (show (n+1))))

-- data Person = Person String Int 

-- name :: Person -> String
-- name (Person x _) = x

-- age :: Person -> Int
-- age (Person _ y) = y

data Person = Person { name :: String, age :: Int} deriving Show

kuldeep :: Person
kuldeep = Person {name = "kuldeep", age = 24}

yuda :: Person
yuda = kuldeep {name = "Yuda"}

printName :: Person -> IO()
printName (Person {name = x}) = putStrLn x
