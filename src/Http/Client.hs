{-# LANGUAGE OverloadedStrings #-}

module Http.Client () where


import Network.Wreq (responseBody, defaults, header, postWith)
import Control.Lens ((&), (.~), (^.))
import qualified Data.ByteString.Lazy.Char8 as LBS
import qualified Data.ByteString.Char8 as BSC
import Data.Aeson (encode, object, (.=))




callIA :: String -> String -> IO()
callIA apiKey message = do
    let url = "https://api.openai.com/v1/chat/completions"
    let opts = defaults 
                & header "Content-Type" .~ ["application/json"]
                & header "Authorization" .~ [BSC.pack ("Bearer " ++ apiKey)]
    let requestBody = encode $ object
          [ "model" .= ("gpt-3.5-turbo" :: String)
          , "temperature" .= (0.7 :: Double)
          , "messages" .=
              [ object
                  [ "role" .= ("user" :: String)
                  , "content" .= message
                  ]
              ]
          ]

    res <- postWith opts url requestBody
    LBS.putStrLn (res ^. responseBody)
