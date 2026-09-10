def put (number)
  if number == number.to_i
    puts number.to_i
  else
    puts number
  end
end

def pow (base, pow)
  pow = pow.to_i
  answer = 1
  pow.to_i.times do
    answer *= base
  end
  answer
end

def find(pow)
  zero = 0
  while pow != pow.to_i
    zero += 1
    pow *= 10
  end
  top = pow.to_i
  bottom = 10 ** zero
  g = top.gcd(bottom)
  [top / g, bottom / g]
end

def multiply (base, power)
  if base == 0
    0
  elsif power == power.to_i
    pow(base, power)
  else
    find = find(power)
    answer = pow(base, find[0])
    answer ** (1.0 / find[1])
  end
end

def power (base, pow)
  if pow == 0
    if base == 0
      puts "Undefined"
    else
      puts "1"
    end
  elsif base == 0 and pow < 0
    puts "Undefined"
  elsif pow > 0
    put(multiply(base, pow))
  else
    put(1 / multiply(base, -pow))
  end
end

puts "Welcome to calculator program, press enter"
gets
loop do
  puts "what operation do you want to do?\n1.sum\n2.minus\n3.multiply\n4.divide\n5.pow"
  op = gets.to_f
  puts "enter the first number"
  first = gets.to_f
  puts "enter the second number"
  second = gets.to_f
  print "the answer is: "
  case op
  when 1
    put(first + second)
  when 2
    put(first - second)
  when 3
    put(first * second)
  when 4
    if second != 0
      put(first / second)
    else
      puts "cant divide to 0"
    end
  when 5
    power(first, second)
  else
    puts "please enter a valid op"
  end
  puts "do you want to continue? [y/n]"
  if gets.to_s.downcase.start_with?("n")
    exit
  end
end
