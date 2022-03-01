import Data.Monoid 
prompt :: String -> IO (IO ())
prompt detail = do
    putStrLn ("What is your " ++ detail ++ "?")
    x <- getLine
    return (putStrLn ("Your " ++ detail ++ " is: " ++ x))

runWizard :: IO (IO a) -> IO a
runWizard request = do
    respond <- request
    respond

main :: IO ()
main = runWizard (prompt "name" <> prompt "age" <> prompt "favorite color")

-- name :: IO (IO ())
-- name = do
--     putStrLn  "What is your Name?"
--     x <- getLine
--     return (putStrLn ("Your Name is : " ++ x))

-- age :: IO (IO ())
-- age = do
--     putStrLn  "How old are you??"
--     x <- getLine
--     return (putStrLn ("Your Age is : " ++ x))

-- prompt :: IO (IO ())
-- prompt = do
--     putStrLn "What is your Name?" <> "Your favorite color??"
--     x <- getLine
--     return (putStrLn ("Your favorite color is : " ++ x))

-- -- prompt, ditambah warna favorit
-- -- masih menggunakan <> (mappend)

-- runWizard :: IO (IO a) -> IO a
-- runWizard request = do
--     respond <- request
--     respond

-- main :: IO ()
-- main = prompt 

