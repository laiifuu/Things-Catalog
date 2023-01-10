def show_options
  puts "Please choose an option by entering a number:
  1- List all books
  2- List all labels
  3- List all music albums
  4- List all games
  5- List all authors
  6- List all sources
  7- List all genres
  8- Add a book
  9- Add a music album
  10- Add a game
  11- Exit"
end

def run
  puts 'Welcome to your catalog of things!'
  exit = false
  until exit
    show_options
    number = gets.to_i
    if number < 11
      puts "Number chosen #{number}"
    elsif number == 11
      exit = true
      puts 'Thanks for using our catalog of things app, see you soon!'
    else
      puts "Error friend, wrong input. Sorry I don't make the rules ¯\\(ツ)/¯"
    end
  end
end

run
