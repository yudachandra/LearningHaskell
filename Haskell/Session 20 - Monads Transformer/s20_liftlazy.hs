import Control.Monad.Trans.State.Lazy ( StateT(runStateT), get, modify, put)
import Control.Monad.Trans.Class ( MonadTrans(lift)) -- for lift function

stateTExample :: StateT Int IO (Int, Int, Int)
stateTExample = do
    a <- get
    lift $ print "Initial Value : "
    lift $ print a
    modify (+1)
    b <- get
    lift $ print "After Adding by 1 : "
    lift $ print b
    put 5
    c <- get
    lift $ print "After Setting as 5 : "
    lift $ print c
    return (a, b, c)

main :: IO ()
main = do
    putStrLn  "Please enter a number : "
    input <- read <$> getLine
    results <- runStateT stateTExample input
    print results