require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
require_relative('../customer')
require_relative('../drinks')
require_relative('../pub')

class CustomerTest < Minitest::Test

  def setup
    @drink1 = Drinks.new("Beer", 4.50)
    @drink2 = Drinks.new("Rum", 3.50)
    @drink3 = Drinks.new("Wine", 7.00)
    @drinks_in_pub = [@drink1, @drink2, @drink3]
    @pub1 = Pub.new("George's Arms", 150, @drinks_in_pub)
    @customer_1 = Customer.new("Jim", 50, 29)
  end

  def test_name_of_customer
    assert_equal("Jim", @customer_1.name)
  end

  def test_money_in_wallet
    assert_equal(50, @customer_1.money_in_wallet)
  end

  def test_decrease_wallet_total
    @customer_1.decrease_wallet_total(5)
    assert_equal(45, @customer_1.money_in_wallet())
  end

  def test_add_drink_to_customer
    @customer_1.drinks_in_hand("Wine")
    assert_equal(1, @customer_1.drinks_bought().count)
  end

end
