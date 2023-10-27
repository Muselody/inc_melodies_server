Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'

  scope :api do
    namespace :v1 do
      mount_devise_token_auth_for 'User', at: 'auth', controllers: {
        registrations: 'v1/users/registrations',
        sessions: 'v1/users/sessions'
      }
      resources :articles, param: :hashid, format: 'json'
      resources :users, param: :hashid, format: 'json'
      resources :genders, param: :hashid, format: 'json', only: %i[index create]
    end
  end
end
