require 'test_helper'

class CustomerTest < ActiveSupport::TestCase
  def setup
    @customer = Customer.new(username: "Test Customer", email: "customer@myapp.com", password: "test12388", password_confirmation: "test12388")
  end

  test "should be valid" do
    assert @customer.valid?
  end

  test "name should be present" do
    @customer.username = " "
    assert_not @customer.valid?
  end

  test "email rules" do
    c = Customer.new(username: "RAD", email: "123@456")
    assert_not c.valid?
  end
  # test "the truth" do
  #   assert true
  # end
end
