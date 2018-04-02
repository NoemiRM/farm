class Grower < ApplicationRecord
    validates :phone_number, phone: true
    validates :first_name, :last_name, :email, presence: true
    validates :email, uniqueness: true
    has_many :grower_fields
    has_many :fields, :through => :grower_fields
end