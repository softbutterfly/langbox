# Euler 0001: Multiples of 3 and 5
#
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we
# get 3, 5, 6 and 9. The sum of these multiples is 23. Find the sum of all the
# multiples of 3 or 5 below 1000.
get_multiples_sum = fn (base, limit) ->
  r = rem(limit - 1, base)
  d = limit - r - 1
  q = d / base
  base * q * (q + 1) / 2
end

n = IO.gets("Ingrese un número: ")
n = String.trim(n)
n = String.to_integer(n)

sum = get_multiples_sum.(3, n)
sum = sum + get_multiples_sum.(5, n)
sum = sum - get_multiples_sum.(15, n)

IO.puts(sum)
