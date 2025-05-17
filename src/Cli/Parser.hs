
module Cli.Parser (runCli) where  

-- imports
import Cli.Commands.Commands(runCommit, runInit, runCommandNotFound)


runCli :: [String] -> IO()
runCli args = do
    let fullCommand = unwords args
    case fullCommand of
        "frank" -> runInit 
        "frank commit" -> runCommit
        _                ->  runCommandNotFound fullCommand
