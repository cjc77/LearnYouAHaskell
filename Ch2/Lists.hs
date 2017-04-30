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

extractNElements e ls = take e ls
