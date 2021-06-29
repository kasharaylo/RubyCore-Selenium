class Item
  attr_reader :price, :weight # Getter
  attr_writer :price, :weight # Setter
  attr_accessor :height, :value # Getter and Setter in one line
end

item1 = Item.new

item1.price = 10
puts item1.price

item1.weight = 20
puts item1.weight

item1.height = 30
puts item1.height

item1.value = 40
puts item1.value