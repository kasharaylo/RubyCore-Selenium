class Item

  #Default value
  def initialize
    @price = 30
  end

  # Getter
  def price
    @price
  end

  # Setter
  def price=(price_value)
    @price = price_value
  end
end

item1 = Item.new
puts item1.price
item1.price=(10)
puts item1.price
item1.price = 20
puts item1.price