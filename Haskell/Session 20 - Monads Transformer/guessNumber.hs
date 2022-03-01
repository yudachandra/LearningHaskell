import Control.Monad.Trans.State.Lazy ( StateT(runStateT), get, modify, put, execStateT)
import System.Random (getStdRandom, Random(randomR))
import Control.Monad.Trans.Class (MonadTrans(lift))

main :: IO ()
main = do answer <- getStdRandom (randomR (1,100))
          putStrLn $ "Stt ini nomornya" ++ show answer
          putStrLn "\n think number dari 1-100"
          guesses <- execStateT (guessSession answer) 0
          putStrLn $ "Success in " ++ show guesses ++ " tries"

guessSession :: Int -> StateT Int IO ()
guessSession answer =
    do gs <- lift getLine
        let g = read gs
        modify (+1)             -- increment number of guess
        case compare g answer of
                LT -> do lift $ putStrLn "Too Low!"
                        guessSession answer
                GT -> do lift $ putStrLn "Too High!"
                        guessSession answer
                EQ -> do lift $ putStrLn "Got It!"
                        guessSession answer