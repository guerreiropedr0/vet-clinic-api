require 'rails_helper'

RSpec.describe Api::V1::AnimalsController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/api/v1/owners/1/animals').to route_to('api/v1/animals#index', owner_id: '1')
    end

    it 'routes to #show' do
      expect(get: '/api/v1/owners/1/animals/1').to route_to('api/v1/animals#show', owner_id: '1', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/api/v1/owners/1/animals').to route_to('api/v1/animals#create', owner_id: '1')
    end

    it 'routes to #update via PUT' do
      expect(put: '/api/v1/owners/1//animals/1').to route_to('api/v1/animals#update', owner_id: '1', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/api/v1/owners/1//animals/1').to route_to('api/v1/animals#update', owner_id: '1', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/api/v1/owners/1//animals/1').to route_to('api/v1/animals#destroy', owner_id: '1', id: '1')
    end
  end
end
