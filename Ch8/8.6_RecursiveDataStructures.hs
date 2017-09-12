

-- LIST

-- Functions are automatically infix if comprised of only special characters
-- infixr = right associative
-- fixity = 5
infixr 5 :-:
data List a = Empty | a :-: (List a) deriving (Show, Read, Eq, Ord)


infixr 5 .++
(.++) :: List a -> List a -> List a
Empty .++ ys = ys
(x :-: xs) .++ ys = x :-: (xs .++ ys)



-- TREE
data Tree a = EmptyTree | Node a (Tree a) (Tree a) deriving (Show, Read, Eq)


-- BST insertion
singleton :: a -> Tree a
singleton x = Node x EmptyTree EmptyTree


treeInsert :: (Ord a) => a -> Tree a -> Tree a
treeInsert x EmptyTree = singleton x
treeInsert x (Node a left right)
-- This tree doesn't accept duplicates, returns original tree if match found
    | x == a = Node x left right
-- Original root, original right, left subtree with new value inserted
    | x < a = Node a (treeInsert x left) right
-- Original root, original left, right subtree with new value inserted
    | x > a = Node a left (treeInsert x right)



-- Check if element is in tree
treeElem :: (Ord a) => a -> Tree a -> Bool
treeElem x EmptyTree = False
treeElem x (Node a left right)
    | x == a = True
    | x < a = treeElem x left
    | x > a = treeElem x right
