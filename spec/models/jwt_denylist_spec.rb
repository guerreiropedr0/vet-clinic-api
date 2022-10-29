require 'rails_helper'

RSpec.describe JwtDenylist, type: :model do
  describe 'validations' do
    context 'jti attribute' do
      it { should validate_presence_of(:jti) }
    end

    context 'exp attribute' do
      it { should validate_presence_of(:exp) }
    end
  end
end
