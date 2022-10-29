require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    context 'name attribute' do
      it { should validate_presence_of(:name) }
      it { should validate_length_of(:name).is_at_least(2).is_at_most(200) }
    end

    context 'email attribute' do
      subject { FactoryBot.create(:user) }
      it { should validate_presence_of(:email) }
      it { should validate_uniqueness_of(:email).case_insensitive }
      it { should allow_value('johndoe@domain.com').for(:email) }
      it { should_not allow_value('a_random_string').for(:email) }
    end

    context 'password attribute' do
      it { should validate_presence_of(:password) }
      it { should validate_length_of(:password).is_at_least(5).is_at_most(100) }
    end
  end
end
