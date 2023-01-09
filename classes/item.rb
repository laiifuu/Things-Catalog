require 'date'

class Item 
  def initialize()
    @id = Random.rand(10000)
    @publish_date = Time.now
    @archived = false
  end

  def set_genre(genre)
    @genre = genre 
    genre.add_item(self)
  end

  def set_author(author)
    @author = author
    author.add_item(self)
  end

  def set_source(source)
    @source = source
    source.add_item(self)
  end

  def set_label(label)
    @label = label
    label.add_item(self)
  end

  def can_be_archived?
    puts (Date.today.year - @publish_date.year) > 10
  end

  private :can_be_archived?

  def move_to_archive
    @archived = true if can_be_archived?
  end
  
end

item = Item.new 
puts item.move_to_archive