class Genre
  attr_accessor :items

  def initialize(name)
    @id = Random.rand(1..1234)
    @name = name
    @items = []
  end

  def add_item(item)
    @items.push(item)
    item.genre = self
  end
end
