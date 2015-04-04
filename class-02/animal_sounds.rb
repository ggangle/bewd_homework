puts "What's the name of an animal that makes a sound?"
	name = gets.chomp.downcase.strip
	puts "You selected a #{name}."

puts "What sound does #{name} make?"
	sound = gets.chomp.downcase.strip
	puts "You entered #{sound}."

puts "A #{name} goes #{sound}, #{sound}, #{sound}."