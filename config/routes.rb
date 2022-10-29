Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :species

      get '/species/:species_id/specializations', to: 'specializations#index', as: 'species_specializations'
      get '/vets/:vet_id/specializations', to: 'specializations#by_vet', as: 'vet_specializations'
      post '/species/:species_id/vets/:vet_id/specializations', to: 'specializations#create', as: 'species_vet_specializations'
      resources :specializations, only: [:show, :destroy]

      resources :vets do
        get '/visits', to: 'visits#by_vet'
      end

      resources :owners do
        resources :animals, shallow: true do
          resources :visits, shallow: true
        end
      end
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
