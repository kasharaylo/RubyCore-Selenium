class String
  def to_real_book
    fields = self.chomp
    fields = fields.split(":")
    Real_Book.new(name: fields[0], price: fields[1].to_i, weight: fields[2].to_i )
  end
end
