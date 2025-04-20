module Cli.Menssages where

welcomeMessage :: String
welcomeMessage = "\n\nFrank  seu commitador com zero paciência pra seu código meia-boca\n\n"


-- Response messages


msgFree, msgToken, msgInvalid :: String
msgFree = "Frank: Modo pobre ativado. Prepare-se pra sinceridade."
msgToken    = "Frank: Então tá, manda o token aí, celebridade."
msgInvalid = "Frank: Isso aí nem opção era. Tenta de novo, Einstein."



-- Menssages  error
errTokenInvalid :: String
errTokenInvalid = "Frank: Esse token aí parece mais um CPF aleatório. Tenta de novo."