

friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
invited_list = []

for friend in friends do
  if friend != 'Brian'
  invited_list.push(friend)
  end
end
puts invited_list

puts "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$"

my_hash = { "one" => 1, "two" => 2 }

my_hash.each { |key, value| puts "#{key} is #{value}" }

puts "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$"

fruits = ["apple", "banana", "strawberry", "pineapple","kiwi","grapes","mango"]

fruits.each_with_index { |fruit, index| puts fruit if index.even? }
puts "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$"
puts "ordering some food"
puts "hunger level? low, high"

hunger_level = gets.chomp()

my_order = ['medium Big Mac', 'medium fries', 'medium milkshake']

if hunger_level == "high"
  my_order.map { |item| puts item.gsub('medium', 'extra large') }
else
  puts my_order
end
