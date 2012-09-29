require 'spec_helper.rb'
#require 'support/active_record.rb'

class Apartment < ActiveRecord::Base

end
 
describe Apartment do
  before { @apartment = Apartment.new(name: 'One', number: 1, apartment_type_id: 1) }

  subject { @apartment }

  it { should be_valid } 
end
