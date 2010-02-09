class Person
  attr_accessor :name, :nickname, :birth_year

  def age
    current_year = 2010
    current_year - birth_year
  end

  def output_info
    puts "--------------------------------------"
    puts "#{name} is #{nickname}, age: #{age}"
  end

end

adam = Person.new
adam.name = "Adam"
adam.nickname = "Younger one"
adam.birth_year = 1979

paul = Person.new
paul.name = "Paul"
paul.nickname = "Older one"
paul.birth_year = 1970

adam.output_info
paul.output_info


puts adam.age