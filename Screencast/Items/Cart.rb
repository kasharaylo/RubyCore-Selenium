class Cart
  # Getter
  attr_reader :books

  include ItemContainer
  class ItemNotSupported < StandardError; end

  UNSUPPORTED_ITEMS = [AniquieItem, Virtual_Book]

  def initialize(owner)
    @books = Array.new
    @owner = owner
  end

  def save_to_file
    File.open("#{@owner}_cart.txt", "w") do |f|
      @books.each do |i|
        raise ItemNotSupported if UNSUPPORTED_ITEMS.include?(i.class)
          f.puts #car:100:50
        end
      end
    end

  def read_from_file
    begin
      File.readlines("#{@owner}_card.txt").each { |i| @books << i.to_real_book } # "car:100:50\n"
      @books.uniq!
    rescue Errno::ENOENT
      File.open("#{@owner}_cart.txt", "w") {}
      puts "file #{@owner}_cart.txt created"
    end
  end
end
