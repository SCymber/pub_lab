class Customer

attr_reader :name
attr_accessor :drinks_bought

  def initialize(name, wallet, age)
    @name = name
    @wallet = wallet
    @age = age
    @drinks_bought = []
  end

  def money_in_wallet
    return @wallet
  end

  def decrease_wallet_total(amount)
    @wallet -= amount
  end

  def drinks_in_hand(drink)
    @drinks_bought.push(drink)
  end

end
