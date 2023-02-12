{-# OPTIONS_GHC -Wno-name-shadowing #-}
{-# OPTIONS_GHC -Wno-type-defaults #-}

module ThirtyOne
  ( generujPalindromy,
  )
where

import Data.List (sort)
import qualified Data.Set as Set

dogenerujSumy :: [Int] -> Int -> Int -> [Int]
dogenerujSumy tab n i =
  if (head tab + i ^ 2) >= n
    then tab
    else dogenerujSumy ((head tab + i ^ 2) : tab) n (i + 1)

generujSumyOd :: Int -> Int -> [Int]
generujSumyOd od n =
  dogenerujSumy [od ^ 2] n (od + 1)

generujWszystkie :: Int -> Int -> Int -> [Int]
generujWszystkie i k n =
  if i >= k
    then []
    else generujSumyOd i n ++ generujWszystkie (i + 1) k n

sqrtFloored :: Int -> Int
sqrtFloored = floor . sqrt . fromIntegral

obliczK :: Int -> Int
obliczK = sqrtFloored

generuj :: Int -> [Int]
generuj n =
  Set.toList (Set.fromList (sort (generujWszystkie 1 (obliczK n) n)))

generujPalindromy :: Int -> [Int]
generujPalindromy n =
  filter czyLiczbaPalindrom (generuj n)

wezSrodek :: [a] -> [a]
wezSrodek = init . tail

czyLiczbaPalindrom :: Show a => a -> Bool
czyLiczbaPalindrom n =
  czyCiagPalindrom (show n)

czyCiagPalindrom :: Eq a => [a] -> Bool
czyCiagPalindrom s =
  (length s <= 1) || (head s == last s && czyCiagPalindrom (wezSrodek s))