# frozen_string_literal: true
require_relative 'string'
require_relative 'item_container'
require_relative 'Order'
require_relative 'Real_book'
require_relative 'Virtual_book'
require_relative 'Cart'
require_relative 'Book'

books = []
books << Real_Book.new({:price => 101, :weight => 100, :name => "car"})
books << Virtual_Book.new({:price => 101, :weight => 100, :name => "kettle"})
books << Virtual_Book.new({:price => 10, :weight => 100, :name => "Dishwasherr"})