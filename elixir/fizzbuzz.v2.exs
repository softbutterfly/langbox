# FizzBuzz v2
get_fizz_or_buzz = fn
  (0, 0, _) -> "FizzBuzz"
  (0, _, _) -> "Fizz"
  (_, 0, _) -> "Buzz"
  (_, _, n) -> n
end

fizz_buzz = fn (n) ->
  get_fizz_or_buzz.(rem(n, 3), rem(n, 5), n)
end

n = IO.gets("Ingrese un número: ")
n = String.trim(n)
n = String.to_integer(n)
IO.puts(fizz_buzz.(n))
