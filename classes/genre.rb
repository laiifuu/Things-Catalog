require_relative 'item'

class Genre < Item
  def initialize(name)
    super
    @id = Random.rand(1..1234)
    @name = name
    @items = []
  end

  def add_item(item)
    @items.push(item)
    item.genre = self
  end
end
