class Product
  attr_reader :price, :count

  def initialize(params)
    @price = params[:price]
    @count = params[:count]
  end

  def to_s
    "#{@price} руб. (осталось #{@count})"
  end
end
