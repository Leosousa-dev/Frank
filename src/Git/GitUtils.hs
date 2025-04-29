module Git.GitUtils (excComand) where

import System.Process

excComand :: IO()
excComand = do
    _ <- system "echo hello world"
    return()