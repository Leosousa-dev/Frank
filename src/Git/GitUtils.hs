module Git.GitUtils (excComand) where

import System.Process

excComand :: IO()
excComand = do
    _ <- system "git diff --cached --name-only"
    _ <- system "git --no-pager diff --word-diff=porcelain | grep -E '^[+-][^+-]'"
    return()