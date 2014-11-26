# User enters a string which is split into an array then added to a sorted Hash.
puts "Enter historgram string: "
text = gets.chomp

words = text.split( " " )

frequencies = Hash.new( 0 )
words.each { |word| frequencies[word] += 1 }
frequencies = frequencies.sort_by { |word, count| count }
frequencies.reverse!
frequencies.each do |word, count|
    puts "#{word}" + " " + "#{count}"
end
