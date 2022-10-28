require 'rails_helper'

RSpec.describe Animal, type: :model do
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
      it { should validate_numericality_of(:weight_kg).is_greater_than_or_equal_to(0.05).is_less_than_or_equal_to(200) }
    end
  end
end
