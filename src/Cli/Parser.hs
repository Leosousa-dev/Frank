-- Parser de argumentos/comandos
module Cli.Parser (runCli) where  

-- import Cli.Menssages    
import Cli.Commands.Commands


runCli :: [String] -> IO()
runCli args = do
    let fullCommand = unwords args
    case fullCommand of
        "frank init" -> runInit 
        "frank commit" -> runCommit
        _                ->  putStrLn  $ "\n\n\n\nUnknown command: " ++ fullCommand ++ "\n\n"
