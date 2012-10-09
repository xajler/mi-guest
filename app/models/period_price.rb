class PeriodPrice < ActiveRecord::Base
  belongs_to :apartment_type

  attr_accessor :apartment_type_name
  attr_accessible :apartment_type_id, :from, :to, :price, :price_euro,
                  :apartment_type_name

  validates :apartment_type_id, :from, :to, :price, :price_euro, presence: true
end
