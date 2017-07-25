Rails.application.routes.draw do
  get 'welcome/index'
  # get 'location/list'
  root 'welcome#index'

  resources :locations do
    member do


    end
    collection do
      get 'list', to: 'locations#list', as: 'list'
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
