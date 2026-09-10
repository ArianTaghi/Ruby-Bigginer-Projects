puts "Welcome to Reverse number guess game!\n please choose a number between 1 and 100 and I will try to guess!Press enter when you're ready:"
gets
loop do
  max = 100
  min = 1
  tries = 0
  loop do
    puts "Is it " + ((max + min) / 2).floor.to_s + " ?[y/n]"
    tries += 1
    if gets.to_s.downcase.start_with?("n")
      if tries > 7
        puts "you haven't guided me correctly"
      end
      puts "Is it higher or lower? [h/l]"
      if gets.to_s.downcase.start_with?("l")
        max = (min + max) / 2
      else
        min = (min + max) / 2
      end
    else
      puts "Brilliant!I got it in #{tries} tries; Do you want to continue? [y/n]"
      if gets.to_s.downcase.start_with?("n")
        exit
      else
        print "Choose a number"
        break
      end
    end
  end
end
