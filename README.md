# Haskell String Sorting Error
This repository demonstrates a common error in Haskell when attempting to sort strings without explicitly defining the comparison method.  The `sort` function from `Data.List` requires an `Ord` instance for the elements being sorted.  Since strings (lists of characters) aren't directly comparable without a specified ordering, the code produces a type error.
The solution shows how to resolve this by either using a function that sorts lexicographically or defining a custom comparison function.
