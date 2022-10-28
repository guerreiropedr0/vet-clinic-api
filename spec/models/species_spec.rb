require 'rails_helper'

RSpec.describe Species, type: :model do
  describe 'asssociations' do
    it { should have_many :animals }
  end

  describe 'validations' do
    context 'name attribute' do
      subject { FactoryBot.create(:species) }
      it { should validate_presence_of(:name) }
      it { should validate_uniqueness_of(:name) }
      it { should validate_length_of(:name).is_at_least(2).is_at_most(100) }
    end
  end
end
