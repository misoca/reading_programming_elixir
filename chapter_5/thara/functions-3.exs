fzbz = fn
  (0, 0, _) -> "FizzBuzz"
  (0, _, _) -> "Fizz"
  (_, 0, _) -> "Buzz"
  (_, _, n) -> n
end

fizzbuzz = fn n -> fzbz.(rem(n, 3), rem(n, 5), n) end

"Buzz" = fizzbuzz.(10)
11 = fizzbuzz.(11)
"Fizz" = fizzbuzz.(12)
13 = fizzbuzz.(13)
14 = fizzbuzz.(14)
"FizzBuzz" = fizzbuzz.(15)
16 = fizzbuzz.(16)
