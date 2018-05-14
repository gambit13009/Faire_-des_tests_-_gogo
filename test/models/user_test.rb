require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "no firstname" do
  	assert_not @user = User.new(firstname: "", lastname: "orange", email:"michal@orange.com").valid?
  	@user.save
  end
    test "no lastname" do
  	assert_not User.new(firstname: "Michal", lastname: "", email:"michal@papis.com").valid?
  end
  test "email uniqueness" do
  	assert_not User.new(firstname: "Michal", lastname: "Orange", email:"michal@orange.com").valid?
  end
end
