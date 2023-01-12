require_relative 'item'

class MusicAlbum < Item
  def initialize(publish_date, archived, id: Random.rand(1..1234), on_spotify: false)
    super(publish_date, archived, id)
    @on_spotify = on_spotify
  end

  def can_be_archived?
    return true if super && @on_spotify

    false
  end

  private :can_be_archived?
end
