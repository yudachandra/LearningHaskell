-- import Control.Monad.Trans.State (StateT, get, evalStateT, runStateT, evalState)
-- import Control.Monad.IO.Class (liftIO)

-- printState :: Show s => StateT s IO ()
-- printState = do
--     state  <- get
--     liftIO $ print state

-- -- ghci> runStateT printState "hello"
-- -- ghci> evalStateT printState "hello"

import Control.Monad.Trans.State (StateT(runStateT), get, modify, put)
import Control.Monad.IO.Class (MonadIO(liftIO))

main :: IO ()
main = runStateT code [1,10,20] >> return ()

code :: StateT [Integer] IO ()
code = do
    x <- pop
    liftIO $ print x
    y <- pop
    liftIO $ print y    
    -- z <- pop
    -- liftIO $ print z
    
pop :: StateT [Integer] IO Integer
pop = do
    (x:xs) <- get -- get data from state
    put xs -- store the rest list back
    return x -- print x
    