require_relative 'init'

cart = Cart.new(ARGV.delete_at(0))
ARGV.each do |a|
  @books.each { |i| cart.add_books(i) if a == i.name }
end
cart.read_from_file
cart.save_to_file
