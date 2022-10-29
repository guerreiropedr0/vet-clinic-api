require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    context 'name attribute' do
      it { should validate_presence_of(:name) }
      it { should validate_length_of(:name).is_at_least(2).is_at_most(200) }
    end

    context 'email attribute' do
      it { should validate_presence_of(:email) }
      it { should validate_uniqueness_of(:email) }
      it { should allow_value('johndoe@domain.com').for(:email) }
      it { should_not allow_value('a_random_string').for(:email) }
    end

    context 'password attribute' do
      it { should validate_presence_of(:password) }
    end
  end
end
