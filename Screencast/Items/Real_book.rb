require_relative 'Book'
class Real_Book < Book

  attr_reader :weight

  def initialize(options)
    @weight = options[:weight]
    super(options[:name], options)
  end

  def info
    yield(weight)
    super
  end

end
