class Field < ApplicationRecord
    validates :name, :area, :area_unit, presence: true
    validates :area, numericality: { greater_than_or_equal_to: 0.01 }, :allow_blank => true
    validates :area_unit, inclusion: { in: %w(hectares acres) }, :allow_blank => true
    has_many :grower_fields
    has_many :growers, :through => :grower_fields
end
