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
  a = 0, b = 1, i = 2
  p a if num.zero?
  while i <= num
    c = a + b
    a = b
    b = c
    i += 1
  end
  p b
end

# fib(9)

def fib_recursive(num)
  if num.zero?
    p 0
  elsif num == 1
    p 1
  else
    fib_recursive(num - 1) + fib_recursive(num - 2)
  end
end

# fib_recursive(9)

def merge_sort(input)
  return input if input.length <= 1

  middle = input.length / 2
  left = input[0...middle]
  right = input[middle..-1]

  merge(merge_sort(left), merge_sort(right))
end

def merge(left, right)
  sorted = []
  until left.empty? || right.empty?
    if left.first <= right.first
      sorted << left.shift
    else
      sorted << right.shift
    end
  end

  p sorted.concat(left).concat(right)
end
my_array = [2, 1, 3, 5, 4]

merge_sort(my_array)