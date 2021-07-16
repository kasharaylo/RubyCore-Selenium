# frozen_string_literal: true
require_relative 'string'
require_relative 'item_container'
require_relative 'Book'
require_relative 'Virtual_book'
require_relative 'Real_book'
require_relative 'anique_item'
require_relative 'Cart'
require_relative 'Order'


books = []
books << AniquieItem.new({:price => 101, :weight => 100, :name => "car"})

books << AniquieItem.new("car", price: 101, weight: 100) #hash

books << Real_Book.new({:price => 101, :weight => 100, :name => "kettle"})
books << Real_Book.new({:price => 10, :weight => 100, :name => "Dishwasherr"})

cart = Cart.new("roman")
cart.add_books Real_Book.new({:price => 101, :weight => 101, :name => "car"})
cart.add_books Real_Book.new({:price => 102, :weight => 102, :name => "kettle"})
cart.add_books Real_Book.new({:price => 103, :weight => 103, :name => "kettle"})

puts cart.kind_of?(Cart)
puts books[0].kind_of?(AniquieItem)
puts books[0].class == AniquieItem
puts books[0].class == books

puts books[0].respond_to?(:info)
puts books[0].respond_to?(:important_info)

puts books[0].send(:price)
puts books[0].price

#puts books[0].send(:tax)
#puts books[0].tax # exception because private def


method = "all_cars"
puts cart.send(method)