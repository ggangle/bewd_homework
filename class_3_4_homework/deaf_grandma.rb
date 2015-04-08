grandma = true
year = rand(1930..1950)

while grandma
puts "What would you like to tell grandma?"
answer = gets.chomp
	if answer == "BYE"
		grandma = false
	elsif answer == answer.upcase
		puts "NO, NOT SINCE #{year}!"
	else 
		puts "HUH?! SPEAK UP, SONNY!"
	end
end