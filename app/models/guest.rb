class Guest < ActiveRecord::Base
  belongs_to :country
  belongs_to :nationality
  attr_accessible :croatian_address, :croatian_town, :date_of_birth, :first_name, :last_name, :town
end
