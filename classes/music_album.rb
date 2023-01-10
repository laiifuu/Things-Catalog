require_relative 'item'

class MusicAlbum < Item
  def initilize()
    @on_spotify = false
  end

  def can_be_archived?
    return true if super && @on_spotify

    false
  end

  private :can_be_archived?
end
