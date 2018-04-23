require 'test_helper'

class GrowerTest < ActiveSupport::TestCase
  test "Should not save with an invalid phone" do
    grower = growers(:invalid_phone)
    
    assert_not grower.save
  end
end
