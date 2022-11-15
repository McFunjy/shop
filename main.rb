require_relative 'lib/product'
require_relative 'lib/film'
require_relative 'lib/book'

film = Film.from_file(__dir__ + '/data/films/01.txt')
book = Book.from_file(__dir__ + '/data/books/01.txt')

# Выводим их на экран
puts film
puts book

# Пытаемся вызвать метод from_file у класса Product и ловим ошибку
begin
  Product.from_file(__dir__ + '/data/films/01.txt')
rescue NotImplementedError
  puts 'Метод класса Product.from_file не реализован'
end

