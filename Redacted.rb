# Searches through a string and prints REDACTED in place of a word.
puts "Enter your text for redaction: "
text = gets.chomp
puts "What do you want redacted? "
redact = gets.chomp
words = text.split( " " )
words.each do |word|
    if word == redact
      print "REDACTED "
    else
      print word + " "
  end
end
