current_year = 2010

def output_info(name, nick, age)
  puts "--------------------------------------"
  puts "#{name} is #{nick}, age: #{age}"
end


name = "Paul"
nickname = "Old Bro"
birth_year = 1970

output_info(name, nickname, current_year - birth_year)

name = "Adam"
nickname = "Younger one"
birth_year = 1979

output_info(name, nickname, current_year - birth_year)

puts "DONE!"