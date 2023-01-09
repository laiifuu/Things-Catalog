attr_accessor :books, :labels

@book_store = DataStore.new('books)
@books = @book_store.read.map do |book|
  Book.new(book['published_date'], book['publisher'], book['cover_state']
end

@label_store = DataStore.new('labels')
@label = @label_store.read.map do |label|
  Label.new(label['title'], label['color'])
end


def add_book
    puts 'Publisher:'
    publisher = gets.chomp.to_s
    puts 'Cover state (good/bad):'
    cover_state = gets.chomp.to_s
    puts 'Published date [Enter date in this format (yyyy-mm-dd)]:'
    published_date = gets.chomp.to_s
    book = Book.new(published_date, publisher, cover_state)
    @books << book
    add_label
    puts 'Book created successfully'
  end