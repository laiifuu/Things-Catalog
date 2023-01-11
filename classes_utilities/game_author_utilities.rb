require_relative '../classes/game'
require_relative '../classes/author'

# GameAuthorUtilities module
module GameAuthorUtilities
  def create_author
    p "What is this game's creator's first name?"
    first_name = gets.chomp
    p "What is this game's creator's last name?"
    last_name = gets.chomp
    Author.new(first_name, last_name)
  end

  def create_game
    p 'When was this game published? (dd-mm-yyyy)'
    publish_date = gets.chomp
    p 'Is it a multiplayer game? (y/n)'
    multiplayer = gets.chomp == 'y'
    p 'When did you last play this game ? (dd-mm-yyyy)'
    last_played_at = gets.chomp

    author = create_author
    game = Game.new(publish_date, false, multiplayer, last_played_at)
    author.add_item(game)
    @games.push(game)
    @authors.push(author)
  end

  def list_games
    if @games.empty?
      puts 'Games list is empty!'
    else
      @games.each_with_index do |game, index|
        puts "#{index})-  ID: #{game.id}"
        puts "  Last_palyed: #{game.last_played_at}"
        puts "  Multiplayer: #{game.multiplayer}"
        puts "  Author: #{game.author.first_name} #{game.author.last_name}"
      end
    end
  end

  def list_authors
    if @authors.empty?
      puts 'Authors list is empty!'
    else
      @authors.each_with_index do |author, index|
        puts "#{index})-  ID: #{author.id}"
        puts "  First name: #{author.first_name}"
        puts "  Last name: #{author.last_name}"
        puts "\n"
      end
    end
  end
end
