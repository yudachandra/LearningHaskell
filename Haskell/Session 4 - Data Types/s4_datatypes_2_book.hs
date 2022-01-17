{-# OPTIONS_GHC -Wno-incomplete-patterns #-}

birthBook::[(String,String,String)]
birthBook=[("dd","4","5")]

prompt :: [(String,String,String)] -> String -> IO ()
prompt bBook todos = do
    putStrLn "Enter a command(add,remove,print)"
    cmd <- getLine
    interpret bBook cmd todos

interpret :: [(String,String,String)] -> String -> String -> IO ()
interpret bBook "print" todos = do
  print bBook
  prompt bBook todos
interpret bBook "add" todos = do
  putStrLn "Enter a name"
  cmdname<-getLine
  putStrLn "Enter an integer month"
  cmdmonth<-getLine
  putStrLn "Enter an integer day"
  cmdday<-getLine
  let newBirthBook = add bBook cmdname cmdmonth cmdday
  prompt newBirthBook todos

add :: (Eq key) => [(key,v,z)] -> key -> v -> z -> [(key,v,z)]
add birthBook name month day = (name, month, day):birthBook

main= prompt birthBook []