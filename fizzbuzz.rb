puts "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
puts "%%%%%%%%%%%%%%%%%%%%%%%% FIZZBUZZ %%%%%%%%%%%%%%%%%%%%%%%%%%"
puts "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
puts "enter your number"
input = gets.chomp().to_i()
puts "start!"
1.upto(input) do |current|  # this outputs numbers from 1 to the input number.
  if current % 3 == 0 and current %5 == 0 # first checks if the inputs is divisible by 3 and 5 , else it will return fizz or buzz instead of fizzbuzz.
    puts "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
    puts "#{current} fizzbuzz!"
    puts "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
  elsif current % 5 == 0
    puts "#{current} buzz!"
  elsif current % 3 == 0
    puts "#{current} fizz!"
  else
    puts current
  end

end
puts "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
puts "%%%%%%%%%%%%%%%%%%%%%%%% FIZZBUZZ %%%%%%%%%%%%%%%%%%%%%%%%%%"
puts "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
