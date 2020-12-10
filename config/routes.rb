Rails.application.routes.draw do
  namespace :api do
    resources :users
  end

  get 'api/typeheads/:query', to: 'api/typeheads#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
