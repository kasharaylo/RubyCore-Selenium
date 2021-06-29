module ItemContainer

  module ClassMethods
    def  min_price
      100
    end
  end

  module InstansMethods
    def add_books(book)
      unless book.price < self.class.min_price
        @books.push book
      end
    end

    def remove_books
      @books.pop
    end

    def validate
      @books.each { |i| puts "Items has no price" if i.price.nil? }
    end

    def delete_invalid_items
      @books.delete_if { |i| i.price.nil? }
    end

    def count_valid_items
      @books.count { |i| i.price }
    end

  end
  # Callback
  def self.included(base)
    base.extend ClassMethods
    base.class_eval do
      include InstansMethods
    end
  end
end
