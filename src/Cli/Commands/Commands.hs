module Cli.Commands.Commands (
    runInit,
    runCommit
    ) where

import Git.GitUtils

runInit :: IO()
runInit = putStrLn $ "\n\ncall runInit\n"



runCommit :: IO()
runCommit = excComand