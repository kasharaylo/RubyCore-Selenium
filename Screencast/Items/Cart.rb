class Cart
  # Getter
  attr_reader :books

  include ItemContainer

  def initialize
    @books = Array.new
  end
end
