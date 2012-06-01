class Accommodation < ActiveRecord::Base
  belongs_to :guest
  belongs_to :document_type
  belongs_to :residence
  attr_accessible :checkout_date, :entry_date
end
