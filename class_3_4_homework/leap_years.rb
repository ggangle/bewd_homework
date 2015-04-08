years = true

	puts "What is your starting year?"
	starting_year = gets.chomp.to_i
	puts  "What is your ending year?"
	ending_year = gets.chomp.to_i

starting_year.upto(ending_year) do |year|
	if year % 4 == 0 && (year % 100 != 0 || year % 400 == 0)
		puts "#{year} is a leap year."
	end
end