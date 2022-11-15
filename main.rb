require_relative 'lib/product'
require_relative 'lib/film'
require_relative 'lib/book'
require_relative 'lib/product_collection'

collection = ProductCollection.from_dir(File.dirname(__FILE__) + '/data')

# Сортируем продукты по возрастанию цены с помощью метода sort! экземпляра
# класса ProductCollection
collection.sort!(by: :title, order: :asc)

# Получаем массив продуктов методом to_a и выводим каждый на экран, передавая
# его методу puts в качестве аргумента.
collection.to_a.each do |product|
  puts product
end
