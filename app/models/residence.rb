class Residence < ActiveRecord::Base
  attr_accessible :address, :owner_name, :town

  validates_presence_of :address, :owner_name, :town
end
