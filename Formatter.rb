# Formats the user's personal information.
print "What's your first name?"
first_name = gets.chomp.capitalize!
print "What's your last name?"
last_name = gets.chomp.capitalize!
print "What city are you from?"
city = gets.chomp.capitalize!
print "What's your 2-letter state code?"
province = gets.chomp.upcase!
puts "Your name is #{first_name} #{last_name}!"
puts "And you're from #{city}, #{province}"
