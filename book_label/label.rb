class Label
    attr_reader :id, :items, :title, :color
  
  def initialize(title, color)
    @id = Random.rand(1000)
    @items = []
    @title = title
    @color = color
  end
end