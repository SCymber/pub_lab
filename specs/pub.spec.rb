require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
require_relative('../pub')
require_relative('../drinks')
require_relative('../customer')

class PubTest < Minitest::Test

  def setup()
    @drink1 = Drinks.new("Beer", 4, 4)
    @drink2 = Drinks.new("Rum", 3, 37)
    @drink3 = Drinks.new("Wine", 7, 13)
    @drinks_in_pub = [@drink1, @drink2, @drink3]

    @pub1 = Pub.new("George's Arms", 150, @drinks_in_pub)
    @customer_1 = Customer.new("Jim", 50, 21)

  end

  def test_name_of_pub
    assert_equal("George's Arms", @pub1.name_of_pub())
  end

  def test_total_cash_in_till
    assert_equal(150, @pub1.cash_in_till())
  end

  def test_increase_money_in_till
    @pub1.increase_money_in_till(5)
    assert_equal(155, @pub1.cash_in_till())
  end

  def test_give_drink_to_customer
    @pub1.give_drink_to_customer()
    assert_equal(2, @pub1.drinks_in_pub.count)
  end

  def test_check_age
    assert_equal("PASS", @pub1.check_age(@customer_1))
  end

  def test_too_drunk?
    @customer_1.increase_drunkenness(@drink2)
    @customer_1.increase_drunkenness(@drink2)
    assert_equal("No service", @pub1.if_too_drunk(@customer_1))
  end

end
