require 'rails_helper'

RSpec.describe Visit, type: :model do
  describe 'asssociations' do
    it { should belong_to :animal }
    it { should belong_to :vet }
  end

  describe 'validations' do
    context 'visit_date attribute' do
      it { should validate_presence_of(:visit_date) }
    end
  end
end
