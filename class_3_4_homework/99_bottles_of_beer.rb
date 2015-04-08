bottles = true

years = 99

while bottles
puts "#{years} bottles of beer on the wall, #{years} bottles of beer."
puts "Take one down and pass it around, #{years - 1} bottles of beer on the wall."
years -= 1
	if years == 1
		puts "1 bottle of beer on the wall, 1 bottle of beer."
		puts "Take one down and pass it around, no more bottles of beer on the wall."
		puts "No more bottles of beer on the wall, no more bottles of beer."
		puts "Go to the store and buy some more, 99 bottles of beer on the wall."
		break
	end
end