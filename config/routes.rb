Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :species
      resources :vets do
        get ':visits', to: 'visits#by_vet'
      end

      resources :owners do
        resources :animals do
          resources :visits
        end
      end
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
