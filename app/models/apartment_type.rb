class ApartmentType < ActiveRecord::Base
  attr_accessible :name

  validates :name, presence: true, length: { maximum: 32 }
end