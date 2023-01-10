require_relative 'item'

class Genre < Item
  attr_accessor :items

  def initialize(name, publish_date, archived)
    super(publish_date, archived)
    @id = Random.rand(1..1234)
    @name = name
    @items = []
  end

  def add_item(item)
    @items.push(item)
    item.genre = self
  end
end
