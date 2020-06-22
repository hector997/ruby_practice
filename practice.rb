text = "Ruby is nice"
puts text
puts text.upcase()
puts text.downcase()
puts text.length()
puts text.include? "ruby"
puts text[5]
puts text[0,5]
puts text.index("is")
puts "odinproject".upcase()
puts "--------------------------------------------"

puts "age?"
age = gets.to_i()
if age > 17
  puts "wellcome to responsibilities "
else
  puts "enjoy it while it lasts "
end
puts "--------------------------------------------"
puts "substraction"
puts "number?"
num_1 = gets.to_f()
puts "an other number"
num_2 = gets.to_f()
result = num_1 - num_2
puts ("#{num_1} - #{num_2} = " + result.to_s)
puts ("the absolute value of #{result} is: " + result.abs().to_s)

puts "--------------------------------------------"

puts "grade? "
grade = gets.to_i()

  did_i_pass = case grade
  when 10 then puts "Hell yeah!"
  when 9 then puts "great job!"
  when 8 then puts "neato"
  when 7 then puts "well, it's better than a 6 "
  when 6 then puts "oof ,barely! better luck next time!"
  when 1 then puts "get rekt m8"

  else puts "you win some, you loose some."

  end

  puts "--------------------------------------------"
  puts "while i < 10 , add 1 : "
  i = 0
  while i < 10 do
   puts "i is #{i}"
   i += 1
  end
  puts "add 1 unitll i > 10 : "
  i = 0
  until i > 10 do
    puts "i is #{i}"
    i += 1
  end
puts "--------------------------------------------"

  for i in 0..5
    puts "#{i} blocks"
  end
puts "--------------------------------------------"
puts "range : 3 to 9"
  3.upto(9) {|num| puts "#{num} " }
puts "--------------------------------------------"

provinces = {
  :bsas => "buenos aires",
  :cba => "cordoba",
  :tcm => "tucuman",
  :er => "entre rios",
  :tdf => "tierra del fuego",
  :chb => "chubut",

}
puts provinces[:cba]

puts "--------------------------------------------"

def say_hi (name = "undefined")
  puts "hello #{name}!"
end

puts "by the way, whats your name?"
name = gets.chomp()
say_hi(name)

puts "--------------------------------------------"
array1 = ["This", "is", "a", "small", "array"]

puts array1.first
puts array1[2]
puts array1.first(2)
puts array1.last(2)

puts "--------------------------------------------"

def cube (num)
  return num * num * num , num
  "this function returns a num ^ 3"
end

puts " ----- lets cube ----- "
puts " enter a number : "
base = gets.to_f()
print "#{cube(base)[1]} cubed is : "
puts cube(base)[0]
puts "--------------------------------------------"
