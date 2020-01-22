class Customer

attr_reader :name, :drunkenness, :age
attr_accessor :drinks_bought

  def initialize(name, wallet, age)
    @name = name
    @wallet = wallet
    @age = age
    @drinks_bought = []
    @drunkenness = 0
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

  def increase_drunkenness(drink)
    @drunkenness += drink.abv
  end

  def buy_a_drink(pub)
    drink = pub.give_drink_to_customer()
    drinks_in_hand(drink)
    increase_drunkenness(drink)
    decrease_wallet_total(drink.price)
    pub.increase_money_in_till(drink.price)
  end

end
