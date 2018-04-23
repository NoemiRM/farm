ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../../config/environment', __FILE__)
require 'rails/test_help'

module ValidatorTest
  ValidableEntity = Struct.new(:phone) do
    include ActiveModel::Validations
    
    validates :phone, phone: true
  end
end

class PhoneValidatorTest < ActiveSupport::TestCase
  test "well formatted phone should be valid" do
    subject = ValidatorTest::ValidableEntity.new('987-654-321')
    
    assert subject.valid?
  end
  
  test "wrong formatted email should not be valid" do
    subject = ValidatorTest::ValidableEntity.new('987654321')
    
    assert subject.invalid?
  end
end