class Customer

attr_reader :name

  def initialize(name, wallet, age)
    @name = name
    @wallet = wallet
    @age = age
  end

  def money_in_wallet
    return @wallet
  end

  def decrease_wallet_total(amount)
    @wallet -= amount
  end

end
