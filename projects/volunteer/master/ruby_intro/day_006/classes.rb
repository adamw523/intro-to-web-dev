class Greeter
  def initialize(name = "World")
    @name = name
  end

  def say_hi
    puts "Hi #{@name}"
  end

  def say_bye
    puts "Bye #{@name}, see you soon"
  end
end

g = Greeter.new("Pat")
g.say_hi
g.say_bye

people = %w{Adam Paul Mark Dee Jackie Seta Amethyst Nadia}
people.each do |person|
  g = Greeter.new(person)
  g.say_hi
  g.say_bye
end

