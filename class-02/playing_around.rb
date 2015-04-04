puts "How would you like to calculate your age in seconds?!" 
puts "\n"
puts "Ready? Let's go!"
puts "\n"
	puts "What is your name?"
	name = gets.chomp
	puts "Great, thanks #{name}! Now, how old are you?"
	age = gets.chomp
	seconds = 60*24*365*age.to_i
	puts "#{name}, you are #{seconds} seconds old!"

puts "\n"

puts "Pick a number and we'll do some math."
	number = gets.chomp
	multiplied = number.to_i*20
	puts "#{name}, #{number} multiplied by 20 is #{multiplied}."
puts "\n"
puts "Pick a second number."
	number_two = gets.chomp
	divided = multiplied.to_i/number_two.to_i
	puts "#{name}, #{multiplied} divided by #{number_two} is #{divided}."