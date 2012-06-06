class Guest < ActiveRecord::Base
  belongs_to :country
  belongs_to :nationality

  attr_accessor :country_name, :nationality_name
  attr_accessible :croatian_address, :croatian_town, :date_of_birth, :first_name, :last_name, :town,
                  :country_name, :nationality_name, :country_id, :nationality_id

  validates_presence_of :first_name, :last_name, :town, :country_id, :nationality_id

  def to_label
    "#{first_name} #{last_name}"
  end

  def to_autocomplete
    "#{last_name} #{first_name} - #{date_of_birth}"
  end
end
