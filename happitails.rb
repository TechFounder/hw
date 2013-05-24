class Clients

  attr_accessor :name, :age, :gender, :kids, :pets

  def initialize(name, age, gender, kids, pets)
    @name = name
    @age = age
    @gender = gender
    @kids = kids
    @pets = pets
  end

  def listClients
    Puts "Here's a list of Clients that uses the shelter: #{name}"
  end
end

class Animals

  attr_accessor :name, :breed, :age, :gender, :toys

  def initialize(name, breed, age, gender, toys)
    @name = name
    @breed = breed
    @age = age
    @gender = gender
    @toys = toys
  end

  def listAnimalsYes
    Puts "Here's a list of Animals available for adoption: #{name}"
  end

  def listAnimalsNo
    Puts "Here's a list of Animals available for adpotion: #{name}"
  end
end

john = Clients.new("John", 30, "Male", 2, 0)
steve = Clients.new("Steve", 50, "Male", 1, 1)
kate = Clients.new("Kate", 25, "Female", 0, 3)
newt = Clients.new("Newt", 45, "Female", 4, 5)
tom = Clients.new("Tom", 18, "Male", 0, 1)

gigi = Animals.new("Gigi", "Dog", 8, "Female", "Chewy")
butch = Animals.new("Butch", "Dog", 3, "Male", "Ball")
mishka = Animals.new("Mishka", "Cat", 6, "Female", "Box")
pinky = Animals.new("Pinky", "Cat", 13, "Female", "Sock")
val = Animals.new("Val", "Snake", 3, "Male", "Hole")
trex = Animals.new("T-Rex", "Dog", 5, "Male", "GitHub")


puts "(1) List clients"
puts "(2) List pets"
puts "(3) Add clients"
puts "(4) Add pets"
puts "(5) Remove pets"
puts ""
puts "Welcome to HappiTails"
print "What would you like to do today? "

resp = gets.chomp.to_i

case resp  
  when 1
    print "Here are all of the clients: #{ }"

  when 2
    print "Here are all of the pets: #{}"

  when 3
    print "Welcome, please enter the following information"
    puts ""
    print "Your first name: "
    	name = gets.chomp.capitalize
    print "Your age: "
    	age = gets.chomp.to_i
    print "Your gender (Male or Female): "
    	gender = gets.chomp.capitalize
    print "How many kids do you have: "
    	kids = gets.chomp.to_i
    print "How many pets do you have: "
    	pets = gets.chomp.to_i

  when 4
    print "Welcome, please enter the following information"
    puts ""
    print "Pet name: "
      name = gets.chomp.capitalize
    print "Kind of pet: "
      breed = gets.chomp.capitalize
    print "Age of pet: "
      age = gets.chomp.to_i
    print "Gender of pet: "
      gender = gets.chomp.capitalize
    print "Pet's favorite toy: "
      toy = gets.chomp.capitalize

  when 5
    print "What's the name of the pet that you would like to remove: "

end
