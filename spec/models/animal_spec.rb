require 'rails_helper'

RSpec.describe Animal, type: :model do
  describe 'asssociations' do
    it { should belong_to :owner }
  end

  describe 'validations' do
    context 'name attribute' do
      it { should validate_presence_of(:name) }
      it { should validate_length_of(:name).is_at_least(2).is_at_most(100) }
    end

    context 'birth_date attribute' do
      it { should validate_presence_of(:birth_date) }
    end

    context 'neutered attribute' do
      it { should validate_presence_of(:neutered) }
    end

    context 'weight_kg attribute' do
      it { should validate_presence_of(:weight_kg) }
    end
  end
end
