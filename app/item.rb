class Item
  attr_accessor :name, :price
  @@items = []
  def initialize(name,price)
    @name = name
    @price = price
    @@items << slef
  end

  def self.all
    @@items
  end
end
