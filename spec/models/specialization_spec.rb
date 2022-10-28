require 'rails_helper'

RSpec.describe Specialization, type: :model do
  describe 'asssociations' do
    it { should belong_to :species }
    it { should belong_to :vet }
  end
end
