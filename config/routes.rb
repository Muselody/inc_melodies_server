Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  scope :v1 do
    resources :articles
  end
  # Defines the root path route ("/")
  # root "articles#index"a
end
