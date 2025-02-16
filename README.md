# JP-Haskell-Project
3 mathematical tasks solved in Haskell.

## Polish instructions
9) Podwójny pandigital rozmiaru n to liczba w której skład wchodzą cyfry od 0 do n dokładnie 2 razy
(zero nie może być na najstarszej pozycji). Przykładowo 5046170132637542 jest podwójnym
pandigitalem rozmiaru 7. Dla podanych liczb naturalnych 0 ≤ n ≤ F podać największy podwójny
pandigital rozmiaru n. Rozwiązanie nie może być oparte o zwykłe zakodowanie wszystkich 17
możliwych n.

31) Palindrom 595 możemy zapisać jako sumę kwadratów kolejnych liczb naturalnych: 
6^2 + 7^2 + 8^2 + 9^2 + 10^2 + 11^2 + 12^2. 
Dla danego n wydrukować wszystkie palindromy mniejsze od n, które możemy
zapisać jako sumę kwadratów kolejnych liczb naturalnych.

34) Kod Prüfer’a
pozwala przekształcić dowolne drzewo na unikalną sekwencję liczb.
Zaimplementować funkcję dekodującą kod Prüfer’a (lista liczb) na drzewo binarne podane w postaci
ciągu krawędzi (lista par liczb):
- prufer_decode([])
- [(1, 2)]
- prufer_decode([1])
- [(1, 2), (1, 3)]
- prufer_decode([2])
- [(1, 2), (2, 3)]
- prufer_decode([3])
- [(1, 3), (2, 3)]
- prufer_decode([4, 4])
- [(1, 4), (2, 4), (3, 4)]

## English instructions
9) A double pandigital of size n is a number that consists of the digits 0 through n exactly twice (zero cannot be in the highest position). For example, 5046170132637542 is a double pandigital of size 7. For the given natural numbers 0 ≤ n ≤ F, find the largest double pandigital of size n. The solution cannot be based on simply encoding all 17 possible n.

31) We can write the palindrome 595 as the sum of squares of consecutive natural numbers:
6^2 + 7^2 + 8^2 + 9^2 + 10^2 + 11^2 + 12^2.
For a given n, print all palindromes less than n that we can write as the sum of squares of consecutive natural numbers.

34) Prüfer code
allows to transform any tree into a unique sequence of numbers. Implement a function that decodes a Prüfer code (a list of numbers) into a binary tree given as a sequence of edges (a list of pairs of numbers):
- prufer_decode([])
- [(1, 2)]
- prufer_decode([1])
- [(1, 2), (1, 3)]
- prufer_decode([2])
- [(1, 2), (2, 3)]
- prufer_decode([3])
- [(1, 3), (2, 3)]
- prufer_decode([4, 4])
- [(1, 4), (2, 4), (3, 4)]

## Authors
- Maciej Krzyżanowski
- Tomasz Lewandowski
- Sebastian Kutny
