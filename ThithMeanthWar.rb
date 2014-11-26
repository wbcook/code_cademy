# Make the user sound like Daffy Duck!
user_input
unless user_input
    print "Thring pleath: "
    user_input = gets.chomp
end
user_input.downcase!
if user_input.include? "s"
    user_input.gsub!(/s/, "th")
else
    print "Didn't need to add Th!"
end
puts "Adios, #{user_input}!"
