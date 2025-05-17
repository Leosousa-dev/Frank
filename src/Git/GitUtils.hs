module Git.GitUtils (excComand) where

import System.Process (readProcess)

excComand :: IO()
excComand = do
    rawDiff <- readProcess "sh" ["-c", "git diff --cached --unified=0 | grep -E '^[+-][^+-]'"] ""
    
    putStrLn rawDiff
    return()