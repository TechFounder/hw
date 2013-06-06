class Shelter
  attr_accessor :name, :clients, :animals

  def initialize(name)
    @name = name
    @clients = []
    @animals = []
  end

  def add_client(newClient)
    @clients << newClient
  end

  def add_animal(newAnimal)
    @animals << newAnimal
  end

  def delete_animal(deleteAnimal)
    @animals = delete_animal
  end

  def to_animals
    animals.each do |y|
      puts "Name: #{y.name}"
      puts "Kind: #{y.breed}"
      puts "Age: #{y.age}"
      puts "Gender: #{y.gender}"
      puts "Fav Toy: #{y.toy}"
      puts " "
    end
  end

  def to_clients
    clients.each do |x|
      puts "Name: #{x.name}"
      puts "Age: #{x.age}"
      puts "Gender: #{x.gender}"
      puts "Kids: #{x.kids}"
      puts "Pets: #{x.pets}"
      puts " "
    end
  end
end

class Client

    attr_accessor :name, :age, :gender, :kids, :pets

    def initialize(name, age, gender, kids, pets)
      @name = name
      @age = age
      @gender = gender
      @kids = kids
      @pets = pets
    end
end

class Animal

    attr_accessor :name, :breed, :age, :gender, :toy

    def initialize(name, breed, age, gender, toy)
      @name = name
      @breed = breed
      @age = age
      @gender = gender
      @toy = toy
    end
end


  shelter = Shelter.new('HappiTails')

  john = Client.new("John", 30, "Male", 2, 0)
  steve = Client.new("Steve", 50, "Male", 1, 1)
  kate = Client.new("Kate", 25, "Female", 0, 3)
  newt = Client.new("Newt", 45, "Female", 4, 5)
  tom = Client.new("Tom", 18, "Male", 0, 1)
  clientlist = [john, steve, kate, newt, tom]


  gigi = Animal.new("Gigi", "Dog", 8, "Female", "Chewy")
  butch = Animal.new("Butch", "Dog", 3, "Male", "Ball")
  mishka = Animal.new("Mishka", "Cat", 6, "Female", "Box")
  pinky = Animal.new("Pinky", "Cat", 13, "Female", "Sock")
  val = Animal.new("Val", "Snake", 3, "Male", "Hole")
  trex = Animal.new("T-Rex", "Dog", 5, "Male", "GitHub")
  animallist = [gigi, butch, mishka, pinky, val, trex]

  shelter.animals = animallist
  shelter.clients = clientlist

  shelter.to_animals
  shelter.to_clients


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
   shelter.to_clients

when 2
   shelter.to_animals

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

  client = Client.new(name, age, gender, kids, pets)
  shelter.add_client(client)

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

  animal = Animal.new(name, breed, age, gender, toy)
  shelter.add_animal(animal)

when 5
  print "What's the name of the pet that you would like to remove: "
  remove = gets.chomp.capitalize
  Animal.all.each
  if remove == pets.a_name.delete_animal

  end
end
