import System.Environment (getArgs)

import Cli.Cli



main :: IO ()
main = do 
    args <- getArgs
    runCli args

