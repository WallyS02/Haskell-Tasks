{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}

{-# HLINT ignore "Use camelCase" #-}
module ThirtyFour
  ( prufer_decode,
    test,
  )
where

data Tree a = Tree [a] [(a, a)] -- custom data type defining tree graph representation: vertices and edges
  deriving (Show)

prufer_decode :: [Int] -> Tree Int -- function type, gets integer list, returns Tree data type
prufer_decode inputCode =
  let n = length inputCode + 2 -- calculating number of tree's vertices
   in Tree [1 .. n] (help_decode inputCode [1 .. n]) -- creating new tree, n vertices, edges computed by helper function

help_decode :: Ord a => [a] -> [a] -> [(a, a)]
help_decode [] [x, y] = [(x, y)] -- when encoded list is empty elements make the last step in algorithm - create and connect last not used vertices
help_decode c l =
  let i = minimum (filter (`notElem` c) l) -- select minimum element from vertices list that is not present in encoded list
      j = head c -- select first element from encoded list
   in (i, j) : help_decode (tail c) (filter (/= i) l) -- add correct edge to result, cut first element from encoded sequence and used vertex from vertices list

test :: [Int]
test = [2, 1, 1, 5, 4, 2]