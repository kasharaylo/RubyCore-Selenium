require_relative 'ep19'

items = Items2.new({:price =>10, :weight =>100, :name => "Car"})
items.info { |attr| puts attr }