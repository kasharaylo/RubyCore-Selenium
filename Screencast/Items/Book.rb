class Book

  @@discount = 0.05

  def self.discount
    if Time.now.month == 4
      return @@discount + 0.1
    else
      return @@discount
    end
  end

  def initialize(name, options = {})
    @real_price = options[:price]
    @name = name
  end

  attr_reader :real_price, :name
  attr_writer :price,

  def info
    yield(price)
    yield(name)
  end

  def price
    (@real_price - @real_price*self.class.discount) + tax if @real_price
  end

  def to_s
    "#{self.name}:#{self.price}:#{self.weight}"
  end

  private
  def tax
    type_tax =
      if self.class == Real_Book
        1
      else
        2
      end
    cost_tax =
      if @real_price > 5
        @real_price*0.2
      else
        @real_price*0.1
      end
    cost_tax + type_tax
  end
end
