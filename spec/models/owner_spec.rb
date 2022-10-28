require 'rails_helper'

RSpec.describe Owner, type: :model do
  describe 'asssociations' do
    it { should have_many :animals }
  end

  describe 'validations' do
    context 'name attribute' do
      it { should validate_presence_of(:name) }
      it { should validate_length_of(:name).is_at_least(2).is_at_most(200) }
    end

    context 'age attribute' do
      it { should validate_numericality_of(:age).is_greater_than_or_equal_to(16).is_less_than_or_equal_to(140) }
    end

    context 'email attribute' do
      subject { FactoryBot.create(:owner) }
      it { should validate_uniqueness_of(:email) }
      it { should allow_value('johndoe@domain.com').for(:email) }
      it { should_not allow_value('a_random_string').for(:email) }
    end
  end
end
