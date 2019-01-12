require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test 'the user must have a password' do
    user = User.new
    assert user.invalid?
  end
end
