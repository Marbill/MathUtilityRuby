# <editor-fold> multiples
def multiples(number)
  m = []
  counter = 1
  s = 0
  while counter < number
    m.push(counter) if counter % 3 == 0 || counter % 5 == 0
    counter += 1
  end
  puts m.join(' + ')
  m.each do |x|
    s += x
  end
  puts "= #{s}"
end

puts "Multiples of 3 and 5"
multiples 10
# </editor-fold>

# <editor-fold> Fibonacci
puts
def Fib(number)
  first = 1
  second = 2
  temp = 0
  f = []
  f.push(first)
  f.push(second)
  number-=2
  number.times do
    temp = first + second
    f.push(temp)
    first = second
    second=temp
  end
  puts f.join(', ')
end

puts "Fibonacci Numbers"
Fib 10
# </editor-fold>

# <editor-fold> Prime Factors
puts
puts "Prime Factors"
def primeNumber number
  counter = 2
  isPrime = true

  while counter < number
    if number%counter==0
      isPrime = false
      break
    end
    counter+=1
  end

  isPrime
end

def primeFactors number
    factors = []
    counter = 2
    while counter < number
      if number % counter == 0
        factors.push(counter)
        if primeNumber(number/counter)
          factors.push(number/counter)
          break
        else
          number=number/counter
          counter=2
        end
      else
        if primeNumber(number)
          factors.push(number)
          break
        else
          counter+=1
        end
      end
    end

    puts factors.join(' + ')
end

primeFactors  600851475143
# </editor-fold>
