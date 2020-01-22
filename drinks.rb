class Drinks

attr_reader :name, :price, :abv

def initialize(name, price, alcohol_content)
  @name = name
  @price = price
  @abv = alcohol_content
end

end
