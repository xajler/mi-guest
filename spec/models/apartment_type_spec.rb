require 'spec_helper.rb'

describe ApartmentType do
  before { @apartment_type = ApartmentType.new(name: 'One') }

  subject { @apartment_type }

  it { should respond_to(:name) } 
  it { should be_valid }

  describe 'invalid when name is not present' do
    before { @apartment_type.name = '  ' }
    it { should_not be_valid }
  end

  describe 'invalid when name is too long (more than 32 chars)' do
    before { @apartment_type.name = 'a' * 33 }
    it { should_not be_valid }
  end
end
