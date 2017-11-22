require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'test_helper'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all
  def setup
    @user = User.new(name: "Example User", email: "user@example.com",
    password: "foobar", password_confirmation: "foobar")
  end

  # Add more helper methods to be used by all tests here...
end
