require_relative '../classes/music_album'
require_relative '../classes/genre'

module MusicalbumGenreUtilities
  def create_genre
    p 'Enter Genre Name: '
    user_genre = gets.chomp
    Genre.new(user_genre)
  end
end
