require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "not blank" do
  	assert_not User.new(firstname: "", lastname: "", email:"michal@orange.com").valid?
  #   assert true
  # end
end
