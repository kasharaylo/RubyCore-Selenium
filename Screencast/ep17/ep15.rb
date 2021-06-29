# Hash
my_data = { :name => "James", :family_name => "Bond" }
puts my_data[:name]
puts my_data[:family_name]

# data about object
p my_data

class Items
  def  initialize(options = {})
    @price  = options[:price]
    @weight = options[:weight]
  end
  attr_accessor :price, :weight
end

items1 = Items.new({ :weight => 10, :price => 30 })
puts items1.price
puts items1.weight
