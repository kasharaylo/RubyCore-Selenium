class Cart2
  # Getter
  attr_reader :books

  def initialize
    @books = []
  end
  def  add_items(item)
    @books.push item
  end
  def remove_items
    @books.pop
  end

  def validate
    @books.each { |i| puts "Items has no price" if i.price.nil? }
  end

  def delete_invalid_items
    @books.delete_if { |i| i.price.nil? }
  end
end