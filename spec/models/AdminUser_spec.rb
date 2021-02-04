require 'rails_helper'

describe AdminUser, type: :model do 
  describe 'validations' do
    #it { should validate_presence_of(:email) }
    it { should have_many(:tips) } 
  end
end