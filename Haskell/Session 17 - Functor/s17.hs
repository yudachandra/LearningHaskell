import Data.List
import Data.Char
import Control.Applicative 

-- fmap (+7) (Just 10)
-- map (+7) [1,2,3,5]

main :: IO ()
main = do
        line <- getLine 
        let line' = reverse line
        putStrLn $ "You said " ++ line' ++ " backward!"

main' :: IO ()
main' = do
        line <- fmap reverse getLine
        putStrLn $ "You said " ++ line ++ " backward!"

-- >>> reverse "yuda"
-- "aduy"

-- dari data list 
-- intersperse '-' "yuda"

-- >>> intersperse 0 [1,2,3,4,5]
-- [1,0,2,0,3,0,4,0,5]

-- dari data char
-- fmap toUpper "aduy"

data User = User String deriving (Show)

newtype User2 = User2 String 

greet :: User -> String 
greet (User name) = "Hello " ++ name

greet2 :: User2 -> String 
greet2 (User2 name) = "Hello " ++ name


f1 :: Int -> Int -> Int 
f1 x y = 2*x+y

main'' :: IO ()
main'' = do 
        print (show $ f1 <$> (Just 1) <*> (Just 2))

-- utility functor <$>
-- applicatrive functor <*>
-- *>
-- and then / then >>

-- Just 2 *> Just 3
-- Just 2 <* Just 3
-- Just 2 <* Nothing
-- (print "foo" *> pure 2) *> (print "fbar" *> pure 3)

-- >>> [(2*),(3*)] <*> [4,5]
-- [8,10,12,15]
-- >>> [(2*),(3*)] <**> [4,5]

-- mainan :: IO ()
-- mainan = do
-- let result1 = pure (+100) <*> Just 300
-- let result2 = pure (*10) <*> Just 50
-- let result3 = pure (/20) <*> Just 50
-- let result4 = pure (+3) <*> Just 350
-- let result5 = pure (+45) <*> Just 60
-- let result6 = pure (*2) <*> Just 90
-- let result7 = pure (/5) <*> Just 1000

-- print (result1)
-- print (result2)
-- print (result3)
-- print (result4)
-- print (result5)
-- print (result6)
-- print (result7)

-----

database :: [(Integer, String)]
database = [
    (1, "Julie"),
    (2, "Chris"),
    (3, "Alozo"),
    (4, "Melman")
    ]
    
database2 :: [(String, Integer)]
database2 = [
    ("Julie", 1),
    ("Chris", 2),
    ("Alozo", 3),
    ("Melman", 4)
    ]

mapToMaybe :: (String -> String) -> (Maybe String -> Maybe String)
mapToMaybe functiondeh Nothing = Nothing 
mapToMaybe functiondeh (Just string) = Just (functiondeh string)

greetUser :: Integer -> Maybe String 
greetUser record = mapToMaybe ("Hello, " ++) (lookup record database)