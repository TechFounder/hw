print "How far are you going (miles)? "
distance = gets.chomp.to_f

print "what milage are you getting (mpg)? "
miles_per_gallon = gets.chomp.to_f

print "What's the cost of gas ($)? "
cost_per_gallon = gets.chomp.to_f

print "What speed are you traveling (mph)? "
speed = gets.chomp.to_f


if speed > 60
	speedaemon = speed - 60

	penalty = speedaemon * 2

	penalty_miles_per_gallon = miles_per_gallon - penalty

	hours = distance / speed

	cost = (cost_per_gallon / penalty_miles_per_gallon) * distance

	puts "You trip will take #{hours} hours and cost $#{cost}"

else

	hours = distance / speed
	cost = (cost_per_gallon / miles_per_gallon) * distance

	puts "You trip will take #{hours} hours and cost $#{cost}"

end