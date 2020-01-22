class Pub

attr_reader :name_of_pub, :drinks_in_pub

def initialize(name_of_pub, till, drink_in_pub)
  @name_of_pub = name_of_pub
  @till = till
  @drinks_in_pub = drink_in_pub
end

  def cash_in_till
    return @till
  end

  def increase_money_in_till(amount)
    @till += amount
  end

end
