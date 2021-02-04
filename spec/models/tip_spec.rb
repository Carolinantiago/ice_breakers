require 'rails_helper'

describe Tip, type: :model do           
  it "must have text" do 
    banana=Tip.create(tip_description: "AAA")
    expect(banana.tip_description).to eq("AAA") 
  end

  it 'reports a length of anything other than zero' do
    expect([1, 2, 3].length).not_to eq 0
  end

  it 'must have tip description' do
    banana=Tip.create(tip_description: "AAA")
    expect(banana.tip_description).not_to eq("") 
  end

  describe 'validations' do
    it { should validate_presence_of(:tip_description) }
    it { should validate_presence_of(:admin_user) }
    it { should belong_to(:admin_user) } 
  end
end

