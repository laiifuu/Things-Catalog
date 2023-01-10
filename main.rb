# frozen_string_literal: true

require_relative 'classes_utilities/game_author_utilities'

# Main class
class Main
  include GameAuthorUtilities

  def initialize
    @games = []
    @authors = []
  end

  def show_options
    puts "Please choose an option by entering a number:
    1- List all books
    2- List all labels\n    3- List all music albums
    4- List all games\n    5- List all authors\n    6- List all genres
    7- Add a book\n    8- Add a music album
    9- Add a game\n    10- Exit"
  end

  def pick_action(number)
    case number
    when 4
      list_games
    when 5
      list_authors
    when 9
      create_game
    end
  end

  def run
    puts 'Welcome to your catalog of things!'
    exit = false
    until exit
      show_options
      number = gets.to_i
      if number < 10
        pick_action(number)
      elsif number == 10
        exit = true
        puts 'Thanks for using our catalog of things app, see you soon!'
      else
        puts "Error friend, wrong input. Sorry I don't make the rules ¯\\(ツ)/¯"
      end
    end
  end
end

main = Main.new
main.run
