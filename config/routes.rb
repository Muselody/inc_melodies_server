Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  scope :api do
    namespace :v1 do
      mount_devise_token_auth_for 'User', at: 'auth'
      resources :articles, param: :hashid, format: 'json'
      resources :users, param: :hashid, format: 'json'
    end
  end
  # Defines the root path route ("/")
  # root "articles#index"a
end
