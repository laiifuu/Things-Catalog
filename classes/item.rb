# frozen_string_literal: true

require 'date'

# Item class
class Item
  def initialize(publish_date, archived, id = Random.rand(10_000))
    @id = id
    @publish_date = Date.parse(publish_date)
    @archived = archived
  end

  def genre(genre)
    @genre = genre
    genre.add_item(self)
  end

  def author(author)
    @author = author
    author.add_item(self)
  end

  def source(source)
    @source = source
    source.add_item(self)
  end

  def label(label)
    @label = label
    label.add_item(self)
  end

  def can_be_archived?
    Date.today.year - @publish_date.year > 10
  end

  private :can_be_archived?

  def move_to_archive
    @archived = true if can_be_archived?
  end
end
