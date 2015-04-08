grandma = true
year = rand(1920..1980)

while grandma
puts "What would you like to tell grandma?"
answer = gets.chomp
	if answer == answer.upcase
		puts "NO, NOT SINCE #{year}!"
		grandma = false
	else 
		puts "HUH?! SPEAK UP, SONNY!"
	end
end