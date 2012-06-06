class Accommodation < ActiveRecord::Base
  belongs_to :guest
  belongs_to :document_type
  belongs_to :residence

  attr_accessor :guest_last_name
  attr_accessible :checkout_date, :entry_date, :guest_id, :document_type_id, :residence_id, :document_number, :guest_last_name

  validates_presence_of :document_number, :guest_id

  def self.by_created_at_desc
    Accommodation.order("created_at desc")
  end

  #def guests_as_json
  #  guests =
  #end
end
