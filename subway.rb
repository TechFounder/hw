require 'pry'

def whichline(input)
	n_line = ["Time Square", "34th St.", "28th St.", "23rd St.", "Union Square", "8th St."]
	l_line = ["8th Ave.", "6th Ave.", "Union Square", "3rd Ave.", "1st Ave."]
	six_line = ["Grand Central", "33rd St.", "28th St.", "23rd St.", "Union Square", "Astor Place"]

	case input
		when "n"
			n_line
		when "l"
			l_line
		when	"6"
			six_line
	end	
end

#def validRespLine(l_input, option)
	#unless option.include? l_input
	#puts "Wrong! Please enter a valid station: "
	#
#end	

def putstops(num)
	puts "Your trip takes #{num} stops!"
end

print "Please enter your starting station: "
	start_station = gets.chomp
print "Please enter your starting line (n, l, or 6): "
	start_line = gets.chomp
		s_line = whichline(start_line)
print "Please enter your ending station: "
	ending_station = gets.chomp
print "Please enter your ending line (n, l, or 6): "
	ending_line = gets.chomp
		e_line = whichline(ending_line)


if start_line == ending_line
	stops = (s_line.index(start_station) - e_line.index(ending_station)).abs

	putstops(stops)

else
	#binding.pry
	difference1 = ((s_line.index(start_station)) - (s_line.index("Union Square"))).abs
	difference2 = ((e_line.index(ending_station)) - (e_line.index("Union Square"))).abs
	stops = difference2 + difference1

	putstops(stops)

end	