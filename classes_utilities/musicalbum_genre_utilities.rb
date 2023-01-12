require_relative '../classes/music_album'
require_relative '../classes/genre'

module MusicAlbumGenreUtilities
  def create_genre
    p 'Enter Genre: '
    new_genre = gets.chomp
    Genre.new(new_genre)
  end

  def create_music_album
    p 'Enter the album\'s published date: (dd-mm-yyyy)'
    new_published_date = gets.chomp
    p 'Is it archived? (y/n)'
    archived = gets.chomp
    archived = archived == 'y'
    new_album = MusicAlbum.new(new_published_date, archived)
    genre = create_genre
    genre.add_item(new_album)
    @music_album.push(new_album)
    @genre.push(genre)
    p 'Your Music Album has been created Successfully'
  end

  def list_music_album
    if @music_album.empty?
      puts 'No Music Album Created!'
    else
      @music_album.each_with_index do |each_album, index|
        puts "#{index}) Book ID: #{each_album.id}
        Published Date: #{each_album.publish_date}
        Archived : #{each_album.archived}
        On Spotify: #{each_album.on_spotify}"
      end
    end
  end

  def list_genre
    if @genre.empty?
      puts 'No Genre for any Music Album Created!'
    else
      @genre.each_with_index do |each_genre, index|
        puts "#{index}) Genre ID: #{each_genre.id} \n Genre Name: #{each_genre.name}"
      end
    end
  end
end
