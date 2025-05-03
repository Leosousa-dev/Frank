module Cli.Menssages (
    welcomeMessage,
    msgFree,
    msgInvalid,
    msgToken,
    errTokenInvalid,
    
) where


-- Response messages


welcomeMessage, msgFree, msgToken :: String
welcomeMessage = "\n\n        Welcome to Frank CLI\nYour sarcastic coding assistant bot\n\n"
msgFree = "Frank: Modo pobre ativado. Prepare-se pra sinceridade."
msgToken    = "Frank: Então tá, manda o token aí, celebridade."





-- Menssages  error
errTokenInvalid, msgInvalid :: String
errTokenInvalid = "Frank: Esse token aí parece mais um CPF aleatório. Tenta de novo."
msgInvalid = "Frank: Isso aí nem opção era. Tenta de novo, Einstein."