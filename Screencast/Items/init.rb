# frozen_string_literal: true
require_relative 'item_container'
require_relative 'Order'
require_relative 'Real_book'
require_relative 'Virtual_book'
require_relative 'Cart'
require_relative 'Book'

book1 = Real_Book.new({:price => 101, :weight => 100, :name => "Car"})
book2 = Virtual_Book.new({:price => 101, :weight => 100, :name => "car"})
book3 = Virtual_Book.new({:price => 10, :weight => 100, :name => "caDishwasherr"})

cart = Cart.new
cart.add_books book1
cart.add_books book2
cart.add_books book3

puts cart.books.size