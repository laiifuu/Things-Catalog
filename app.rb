require './book_label/book'
require './book_label/label'

class App

attr_accessor :books, :labels

@book_store = DataStore.new('books')
@books = @book_store.read.map do |book|
  Book.new(book['published_date'], book['publisher'], book['cover_state'])
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

def add_label
  puts 'Title:'
  title = gets.chomps
  puts 'Color:'
  color = gets.chomp
  @label << Label.new(title, color)
  puts 'Label created successfully'
end

def list_labels
  if @labels.empty?
    puts 'There are no labels in the catalog'
  else
     @labels.each do |label|
      puts 'Title: #{label.title, Color: #{label.color}'
    end
  end
end

def list_books
  if @books.empty?
    puts 'There are no books in the catalog'
  else
    @books.each do |book|
   puts "Publisher: #{book.publisher}, Cover state: #{book.cover_state}, Published date: #{book.published_date}"
   end
 end
end

   
def list_options
option = gets.chomps.to_s
case option
when '1'
list_books
when '2'
list_label
when '3'
add_book
when '4'
put 'File saved successfully!'
puts 'Thank you for using this app!'
close
exit 0
end
end

def close
@book_store.write(@books.map(&:create_json))
@label_store.write(@labels.map(&:create_json))
end

def start
  loop do
  welcome
   list_options
    end
  end
end