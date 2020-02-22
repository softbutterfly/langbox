# FizzBuzz v1

n = IO.gets("Ingrese un número: ")
n = String.trim(n)
n = String.to_integer(n)
cond do
  rem(n, 15) == 0 ->
    IO.puts("FizzBuzz")
  rem(n, 5) == 0 ->
    IO.puts("Buzz")
  rem(n, 3) == 0 ->
    IO.puts("Fizz")
  true ->
    IO.puts(n)
end
