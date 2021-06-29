class Items2
  def initialize
    @price = options[:price]
    @weight = options[:weight]
    @name = options[:name]
  end
  attr_reader :price, :weight, :name
  attr_writer :price, :weight, :name

  def info
    yield(price)
    yield(weight)
    yield(name)
  end
end