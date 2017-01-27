import Control.Monad

main = do
  putStrLn "Please enter a word: "
  str <- getLine
  if null str
    then return()
    else do
      putStrLn $ reverseWords str
  putStrLn "Keep Going Y|N ?"
  keepGoing <- getLine
  when (keepGoing == "N") $ do
    putStrLn "Have a nice day!"
  when (keepGoing == "Y") $ do
    main

reverseWords :: String -> String
reverseWords = unwords . map reverse . words

