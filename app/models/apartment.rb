class Apartment < ActiveRecord::Base
  belongs_to :apartment_type

  attr_accessor :apartment_type_name
  attr_accessible :apartment_type_id, :number, :apartment_type_name

  validates :apartment_type_id, :number, presence: true

  def to_s
    "#{number} - #{apartment_type.name}"
  end
end
