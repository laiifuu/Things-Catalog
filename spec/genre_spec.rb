require_relative '../classes/item'
require_relative '../classes/genre'

describe Genre do
  context 'Testing the instantiation of the Genre class' do
    it 'should be an instance of Genre and the element should be the instance of the Item class' do
      new_genre = Genre.new('Genre Name', '2021-08-05', false)
      new_item = Item.new('2021-01-04', false)
      expect(new_genre).to be_instance_of Genre

      new_genre.add_item(new_item)
      expect(new_genre.items[0]).to be_instance_of Item
    end
  end
end
