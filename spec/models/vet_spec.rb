require 'rails_helper'

RSpec.describe Vet, type: :model do
  describe 'asssociations' do
    it { should have_many :specializations }
    it { should have_many(:species).through(:specializations) }
  end

  describe 'validations' do
    context 'name attribute' do
      it { should validate_presence_of(:name) }
      it { should validate_length_of(:name).is_at_least(2).is_at_most(200) }
    end

    context 'age attribute' do
      it { should validate_presence_of(:age) }
      it { should validate_numericality_of(:age).is_greater_than_or_equal_to(18).is_less_than_or_equal_to(80) }
    end

    context 'graduation_date attribute' do
      it { should validate_presence_of(:graduation_date) }
    end
  end
end
