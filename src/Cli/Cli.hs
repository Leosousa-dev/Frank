module Cli.Cli (
    runCli
)where

import Cli.Menssages







runCli :: [String] -> IO ()
runCli args = do

    let fullCommand = unwords args
    case fullCommand of
        "frank init"     ->  putStrLn welcomeMessage
        "frank commit"   ->  putStrLn  "\n\nCommitting changes...\n\n"
        _                ->  putStrLn  $ "\n\n\n\nUnknown command: " ++ fullCommand