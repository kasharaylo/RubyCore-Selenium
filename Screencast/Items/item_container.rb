module ItemContainer

  module ClassMethods
    def  min_price
      100
    end
  end

  module InstansMethods

    def method_missing(method_name)
      if method_name =~ /^all_/
        show_all_items_with_name(method_name.to_s.sub(/^all_/, '').chomp('s'))
      else
        super
        end
    end

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

    private
    def show_all_items_with_name(n)
      books.map { |i| i if n == i.name}.delete_if { |i| i.nil? }
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
