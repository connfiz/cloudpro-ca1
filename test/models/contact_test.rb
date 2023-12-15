require "test_helper"

class ContactTest < ActiveSupport::TestCase
test "should be valid with valid attributes" do
    model = ModelName.new(name: "conn", email: "conn@example.com", phone: "123-456-7890")
    assert model.valid?
  end

  test "should not be valid without a name" do
    model = ModelName.new(email: "ruby@example.com", phone: "123-456-7890")
    assert_not model.valid?
  end

  test "should not be valid without an email" do
    model = ModelName.new(name: "emma", phone: "123-456-7890")
    assert_not model.valid?
  end

  test "should not be valid without a phone" do
    model = ModelName.new(name: "gibby", email: "gibby@example.com")
    assert_not model.valid?
  end
end
