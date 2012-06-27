class Accommodation < ActiveRecord::Base
  belongs_to :guest
  belongs_to :document_type
  belongs_to :residence

  attr_accessor :guest_last_name
  attr_accessible :checkout_date, :entry_date, :guest_id, :document_type_id, :residence_id, :document_number, :guest_last_name

  validates_presence_of :document_number, :guest_id

  def self.filter_by_month_and_orderd_by_created_at_desc(month, year)
    start_date = DateTime.new(year, month, 1)
    end_date = start_date.end_of_month

    Accommodation.where(:entry_date => start_date..end_date).order("created_at desc")
  end
end
