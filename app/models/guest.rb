class Guest < ActiveRecord::Base
  belongs_to :country
  belongs_to :nationality
  attr_accessible :croatian_address, :croatian_town, :date_of_birth, :first_name, :last_name, :town,
                  :country_id, :nationality_id

  validates_presence_of :first_name, :last_name, :town

  def to_label
    "#{first_name} #{last_name}"
  end
end
