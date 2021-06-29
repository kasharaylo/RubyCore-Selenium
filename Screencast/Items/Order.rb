class Order
  attr_reader :books

  include ItemContainer

  def initialize
    @books = Array.new
    # ...
  end

  def place
    # actually place order
  end
end
