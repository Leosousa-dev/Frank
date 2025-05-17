module Cli.Commands.Commands (runInit, runCommit, runCommandNotFound) where


import Git.GitUtils (excComand)
import Cli.Menssages (welcomeMessage, unKnownCommand)

runInit :: IO()
runInit = putStrLn $ welcomeMessage



runCommit :: IO()
runCommit = excComand


runCommandNotFound :: String ->  IO()
runCommandNotFound command = putStrLn(unKnownCommand ++ command)