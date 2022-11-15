require_relative 'lib/product'
require_relative 'lib/film'
require_relative 'lib/book'

products = []

products << Film.new(
  title: 'Леон', year: '1994', director: 'Люк Бессон', price: 990, count: 5
)

products << Film.new(
  title: 'Дурак', year: '2014', director: 'Юрий Быков', price: 390, count: 1
)

products << Book.new(
  title: 'Идиот',
  genre: 'роман',
  author: 'Федор Достоевский',
  price: 1500,
  count: 10
)

# Выводим все продукты в консоль просто передавая их методу puts
puts 'Вот какие товары у нас есть:'
puts
products.each { |product| puts product }
