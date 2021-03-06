Rails.application.routes.draw do

  devise_for :users
  root to: 'welcome#index'
  resources :tipo2s
  resources :tipo1s
  resources :dexes


  authenticate :user do
    resources :pokemons, only: [:new, :create, :edit, :update, :destroy]
  end
  resources :pokemons, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
