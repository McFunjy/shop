class Product
  attr_accessor :price, :count

  def initialize(params)
    @price = params[:price]
    @count = params[:count]
  end

  def to_s
    "#{@price} руб. (осталось #{@count})"
  end

  def update(params)
    @price = params[:price] if params[:price]
    @count = params[:count] if params[:count]
  end
end
