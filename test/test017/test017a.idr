module scg

total
vtrans : Vect n a -> Vect n a -> List a
vtrans [] _         = []
vtrans (x :: xs) ys = x :: vtrans ys ys

