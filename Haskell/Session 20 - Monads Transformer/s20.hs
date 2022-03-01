import Control.Monad.Trans.Reader (Reader, ask, runReader)

tom :: Reader String String
tom = do
    env <- ask -- gives you the environtment ("Who is this?")
    return (env ++ "This is TOM. ")

jerry :: Reader String String
jerry = do
    env <- ask -- gives you the environtment ("Who is this?")
    return (env ++ "This is JERRY. ")

tomAndJerry :: Reader String String
tomAndJerry = do
    t <- tom
    j <- jerry
    return (t ++ "\n" ++ j)

runJerryRun :: String
runJerryRun = runReader tomAndJerry "Who is this ?"

runJerryRun' :: IO()
runJerryRun' = putStrLn (runReader tomAndJerry "Who is this ?")
