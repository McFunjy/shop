require_relative 'lib/product'
require_relative 'lib/film'
require_relative 'lib/book'
require_relative 'lib/album'
require_relative 'lib/product_collection'

basket = []

collection = ProductCollection.from_dir(__dir__ + '/data')

user_input = 1

until user_input.zero?
  puts "Что хотите купить:"
  puts
  collection.to_a.each.with_index(1) do |product, index|
    puts "#{index}. #{product}"
  end
  puts "0. Выход"

  puts
  user_input = $stdin.gets.to_i
  puts

  if user_input.zero?
    puts "Вы купили:"
    puts
    basket.each { |item| puts item }
    puts
    puts "С Вас — #{basket.sum {|item| item.price }} руб. Спасибо за покупки!"
  else
    collection.collection[user_input - 1].count -= 1
    puts "Вы выбрали: #{collection.collection[user_input - 1]}"
    basket << collection.collection[user_input - 1]
    puts
    puts "Всего товаров на сумму: #{basket.sum {|item| item.price }} руб."
    puts
  end
end
