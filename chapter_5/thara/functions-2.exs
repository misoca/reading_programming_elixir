fzbz = fn
  (0, 0, _) -> "FizzBuzz"
  (0, _, _) -> "Fizz"
  (_, 0, _) -> "Buzz"
  (_, _, n) -> n
end

"FizzBuzz" = fzbz.(0, 0, 10)
"Fizz" = fzbz.(0, 1, 10)
"Buzz" = fzbz.(1, 0, 10)
10 = fzbz.(1, 1, 10)
