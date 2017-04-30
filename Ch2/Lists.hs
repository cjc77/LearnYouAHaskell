-- Just some numbers
someNums = [1, 2, 3]

-- First Item in List
findHead y = head y

-- List without a head
findTail y = tail y

-- Get at the last element
findLast y = last y

-- Ignore the last element
ignoreLast y = init y

getLength y = length y

-- grab e elements from a list
extractNElements n ls = take n ls

-- drop some elements from the list
removeNElements n ls = drop n ls

-- Find biggest and smallest
minAndMax ls = (minimum ls, maximum ls)

-- Find the product of a list
prod ls = product ls
