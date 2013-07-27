module Main

implicit 
natInt : Nat -> Integer
natInt x = cast x

implicit 
forget : Vect n a -> List a
forget [] = []
forget (x :: xs) = x :: forget xs

foo : Vect n a -> List a
foo xs = reverse xs

implicit intString : Integer -> String
intString = show

test : Integer -> String
test x = "Number " ++ x

main : IO ()
main = do print (foo [1,2,3])
          print (test 42)


