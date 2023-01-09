attr_accessor :books, :labels

@book_store = DataStore.new('books)
@books = @book_store.read.map do |book|
  Book.new(book['published_date'], book['publisher'], book['cover_state']
end

@label_store = DataStore.new('labels')
@label = @label_store.read.map do |label|
  Label.new(label['title'], label['color'])
end