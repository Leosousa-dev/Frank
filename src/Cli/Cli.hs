module Cli.Cli where


welcomeMessage :: String
welcomeMessage = "\n \ESC[1m🧠 FRANK v0.1 — seu commit buddy robótico\ESC[0m\n\n Ah, mais um desenvolvedor se arrastando até mim... vamos fingir que você sabe o que está fazendo.\n\n"


runCli :: [String] -> IO ()
runCli args = do

    let fullCommand = unwords args
    case fullCommand of
        "frank init"     ->  putStrLn welcomeMessage
        "frank commit"   ->  putStrLn  "\n\nCommitting changes...\n\n"
        _                ->  putStrLn  $ "\n\n\n\nUnknown command: " ++ fullCommand