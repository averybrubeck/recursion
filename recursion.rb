# frozen_string_literal: true

# collatz conjecture
def collatz(num)
  if num == 1
    p 0
  elsif num.even?
    p 1 + collatz(num / 2)
  else
    p 1 + collatz(num * 3 + 1)
  end
end

# collatz(3)

def fib(num)
  a = 0
  b = 1
  i = 2
  p a if num.zero?
  while i <= num
    c = a + b
    a = b
    b = c
    i += 1
  end
  p b
end

fib(9)
