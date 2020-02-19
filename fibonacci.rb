# recursive solution
# def fib(n)
#   if n == 0
#     return 0
#   elsif n == 1
#     return 1
#   else
#     return fib(n-1) + fib(n-2)
#   end
# end

# def memo_fibs(n, fibs = {})
#   return fibs[n] if fibs[n]
#   return fibs[0] = 0 if n == 0
#   return fibs[1] = 1 if n == 1
#   fibs[n] = memo_fibs(n-1, fibs) + memo_fibs(n-2, fibs)
# end
# # puts "#{fib(27)}"
# puts "#{memo_fibs(1466)}"

# def fib_penultimate(n)
#   res = Array.new(n)
#   res[0] = 0
#   res[1] = 1
#   i = 2
#   while i <= n
#     res[i] = res[i-1] + res[i-2]
#     i +=1
#   end
#   return res[n]
# end

# puts "#{fib_penultimate(4)}"

# belowis not quite right

def fib_ultimate(n)
    back2 = 0
    back1 = 1
    i = 2
    next_val = nil

    if n == 0
        return 0
    else
        while i < n
            next_val = back1 + back2
            back2 = back1
            back1 = next_val
        end
    end
    return(back1 + back2)
end

puts "#{fib_ultimate(2)}"
