import System.Random

rollDice :: IO Int 
rollDice = getStdRandom (randomR (1,300))