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

collatz(3)