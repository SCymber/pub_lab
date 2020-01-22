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


  def give_drink_to_customer
    return @drinks_in_pub.pop()
  end

  def check_age(customer)
    if customer.age >= 18
      return "PASS"
    else
      return "NO SALE"
    end
  end

  def if_too_drunk(customer)
    if customer.drunkenness >= 50
      return "No service"
    end
  end

  #check customer age



end
