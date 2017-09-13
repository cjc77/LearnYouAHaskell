

main = interact checkPalindromes

checkPalindromes = unlines . map (\xs ->
    if isPalindrome xs then "Palindrome: " ++ xs
    else "Not Palindrome: " ++ xs) . lines
    where isPalindrome xs = xs == reverse xs
