```haskell
import Data.List (sort)
import Data.Ord (comparing)

main :: IO ()
main = do
  let nums = [1, 5, 2, 8, 3]
  let sortedNums = sort nums
  print sortedNums -- Output: [1,2,3,5,8]

  let str = "hello"
  let sortedStr = sort $ map (
    x -> x
  ) str  --This is not correct. We need to define the ordering function
  -- let sortedStr = sortOn length ["apple", "banana", "kiwi"] -- Correct: This sorts string lexicographically
  let sortedStr = sortOn (
    x -> x
  ) str --This is not correct. We need to define the ordering function
  print sortedStr -- Output: [1,2,3,5,8] (Incorrect in this case)
  let sortedStr = sortBy (
    x y -> compare x y
  ) str
  print sortedStr

  let str2 = "world"
  -- using comparing for lexicographical sorting 
  let sortedStr2 = sortBy (comparing id) [str, str2]
  print sortedStr2 -- Output: ["hello","world"]
```