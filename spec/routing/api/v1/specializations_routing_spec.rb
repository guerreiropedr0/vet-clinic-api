require 'rails_helper'

RSpec.describe Api::V1::SpecializationsController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/api/v1/species/1/specializations').to route_to('api/v1/specializations#index', species_id: '1')
    end

    it 'routes to #show' do
      expect(get: '/api/v1/specializations/1').to route_to('api/v1/specializations#show', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/api/v1/species/1/vets/1/specializations').to route_to('api/v1/specializations#create',
                                                                           species_id: '1', vet_id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/api/v1/specializations/1').to route_to('api/v1/specializations#destroy', id: '1')
    end
  end
end
