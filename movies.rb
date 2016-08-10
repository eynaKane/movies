movies = { cinderella: 4, tangled: 3, mulan: 3.5 }

loop do
    print "\n\n**********\nChoices:\n Add\n Update\n Display \n Delete\n\nPlease enter your choice: "
    choice = gets.chomp.strip.downcase

    case choice
    when "add"
        print "Enter title: "
        title = gets.chomp
        if movies[title.to_sym] == nil
            print "Enter rating: "
            rating = gets.chomp
            movies[title.to_sym] = rating.to_i
            puts "\nMovie successfully added!"

            print "\n---------------\nMOVIES:\n---------------\n"
            movies.each do |movie, rating|
                puts "#{movie}: #{rating}"
            end
            print "---------------\n"
        else
            puts "Movie already exists!"
        end
    when "update"
        puts "Enter title: "
        title = gets.chomp
        if movies[title.to_sym] == nil
            puts "Movie does not exist."
        else
            puts "Enter rating: "
            rating = gets.chomp
            movies[title.to_sym] = rating.to_i
            puts "Update successful!"
            movies.each { |movie, rating| puts "#{movie}: #{rating}" }
        end
    when "display"
        movies.each { |movie, rating| puts "#{movie}: #{rating}" }
    when "delete"
        puts "Enter title: "
        title = gets.chomp
        if movies[title.to_sym] == nil
            puts "Invalid movie!"
        else
            movies.delete(title)
            movies.each { |movie, rating| puts "#{movie}: #{rating}" }
        end
    else
        puts "Error!"
    end
    print "\nTry again? "
    try = gets.chomp
    break if try !~ /^y{1}(es)?$/i
end
