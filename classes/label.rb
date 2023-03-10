class Label
  attr_reader :id, :items, :title, :color

  def initialize(title, color, id = Random.rand(10_000))
    @id = id
    @items = []
    @title = title
    @color = color
  end

  def add_item(item)
    @items << item
    item.label = self
  end

  def to_json(*args)
    {
      'id' => @id,
      'title' => @title,
      'color' => @color
    }.to_json(*args)
  end
end
