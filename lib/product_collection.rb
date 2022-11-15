class ProductCollection
  PRODUCT_TYPES = [
    {dir: 'films', class: Film},
    {dir: 'books', class: Book},
  ]
  class << self
    def from_dir(dir_path)
      products = []

      PRODUCT_TYPES.each do |type|
        product_dir = type[:dir]

        product_class = type[:class]

        Dir[File.join(dir_path, product_dir, '*.txt')].map do |path|
          products << product_class.from_file(path)
        end
      end

      self.new(products)
    end
  end

  def initialize(collection = [])
    @collection = collection
  end

  def to_a
    @collection
  end

  def sort!(params)
    case params[:by]
    when :title
      @collection.sort_by! { |product| product.title }
    when :price
      @collection.sort_by! { |product| product.price }
    when :amount
      @collection.sort_by! { |product| product.count }
    end

    @collection.reverse! if params[:order] == :asc
  end
end
