import Control.Monad.Trans.Reader (Reader, ask, runReader)

hello :: Reader String String 
hello = do
    name <- ask
    return ("hello, " ++ name ++ "!")

bye :: Reader String String 
bye = do
    name <- ask
    return ("bye, " ++ name ++ "!")

tanya :: Reader String String 
tanya = do
    c1 <- hello
    c2 <- bye
    return $ c1 ++ c2

main :: IO ()
main = print . runReader tanya $ "adit"

