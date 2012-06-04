class Accommodation < ActiveRecord::Base
  belongs_to :guest
  belongs_to :document_type
  belongs_to :residence
  attr_accessible :checkout_date, :entry_date, :guest_id, :document_type_id, :residence_id, :document_number

  validates_presence_of :document_number

  def self.by_created_at_desc
    Accommodation.order("created_at desc")
  end
end
