#collatz conjecture
def collatz(n)
    if n == 1
      return 0
    elsif n.even?
        p 1 + collatz(n / 2)
    else
        p 1 + collatz(n * 3 + 1 )
    end
end

collatz(50)