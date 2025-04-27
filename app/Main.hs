import System.Environment (getArgs)

import Cli.Parser



main :: IO ()
main = do 
    args <- getArgs
    runCli args

