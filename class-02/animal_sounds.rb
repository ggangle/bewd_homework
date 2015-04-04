puts "What's the name of an animal that makes a sound?"
	name = gets.chomp.downcase.strip
	puts "You selected a #{name}."

puts "What sound does #{name} make?"
	sound = gets.chomp.downcase.strip
	puts "You entered #{sound}."

puts "How many times does the #{name} go #{sound}?"
	number = gets.chomp.to_i

numbered_sounds = sound * number

puts "A #{name} goes #{numbered_sounds}."