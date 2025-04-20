module Cli.Cli where



runCli :: [String] -> IO ()
runCli args = do

    let fullCommand = unwords args
    case fullCommand of
        "frank init"     ->  putStrLn "\n\nInitializing Frank...\n\n"
        "frank commit"   ->  putStrLn  "\n\nCommitting changes...\n\n"
        _                ->  putStrLn  $ "\n\n\n\nUnknown command: " ++ fullCommand