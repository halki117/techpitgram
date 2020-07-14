Rails.application.routes.draw do
  devise_for :users, controllers: {registration: 'ragistration'}
  root 'posts#index'

  get '/users/:id', to: 'users#show', as: 'user'

  resources :posts, only: %i(new create index show destroy) do
    resources :photos, only: %i(create)
  end
end
