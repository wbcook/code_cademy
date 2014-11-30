# A Night at the Movies: Deep in the CRUD
movies = {
    Star_Trek: 4,
    "The_Croods" => 3,
    :Star_Wars_I => 1
    }

puts "What would you like to do?"
choice = gets.chomp

case choice
when "add"
    puts "What movie?"
    title = gets.chomp
    puts "Rate the movie:"
    rating = gets.chomp
    if movies[title.to_sym]
        puts "Already got #{title} boss!"
    else
        movies[title.to_sym] = rating.to_i
    end
when "update"
    puts "Update a rating?"
    title = gets.chomp
    if movies[title.to_sym] == nil
        "We don't got #{title}!"
    else
        puts "New rating?"
        rating = gets.chomp
        movies[title.to_sym] = rating.to_i
    end
when "display"
    movies.each do |title, rating|
        puts "#{title}: #{rating}"
    end
when "delete"
    puts "Delete a movie?"
    title = gets.chomp
    if movies[title.to_sym] == nil
        puts "No movie boss."
    else
        movies.delete(title)
        puts "Deleted #{title}!"
    end
else
    puts "Go CRUD yourself home slice."
end
