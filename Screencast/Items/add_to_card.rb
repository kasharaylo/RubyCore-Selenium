require_relative 'init'

cart = Cart.new(ARGV.delete_at(0))
ARGV.each do |a|
  books.each { |i| cart.add_books(i) if a == i.name }
end
cart.read_from_file
begin
  cart.save_to_file
rescue Cart::ItemNotSupported
  puts "One of the items you're trying to save is not supported by the Cart. Unsupported item classes are:
#{Cart::UNSUPPORTED_ITEMS}"
  end