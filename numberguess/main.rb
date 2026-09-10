puts "Welcome to number guess game\nThe computer will choose a number between 1 and 100\npress Enter key to start:"
gets
puts "Computer chose! Now enter your guess and computer will guide you:"
loop do
  random = rand(1..100)
  number_of_tries = 0
  loop do
    guess = gets.to_i
    if guess > random
      puts "wrong! guess lower"
    elsif guess < random
      puts "wrong! guess higher"
    else
      puts "you got it in " + number_of_tries.to_s + " tries, do you want to continue? [y/n]"
      break
    end
    number_of_tries += 1
  end
  break if gets.chomp.to_s.downcase.start_with?("n")
  puts "Computer chose!"
end
