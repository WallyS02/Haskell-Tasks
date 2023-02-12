module Nine
  ( bdPandigitalFor,
  )
where

import Data.List

digits :: String
digits = ['0' .. '9'] ++ ['A' .. 'F']

digitIndex :: Char -> Int
digitIndex d = case elemIndex d digits of (Just i) -> i; Nothing -> 1

bdPandigitalFor :: Char -> [Char]
bdPandigitalFor '1' = "1100"
bdPandigitalFor d = d : "" ++ d : "" ++ bdPandigitalFor (digits !! (digitIndex d - 1))