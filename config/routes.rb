Rails.application.routes.draw do
  devise_for :users
  root to: 'grand_parents#index'

  resources :grand_parents do
    resources :bookings, only: [:new, :create, :reservation, :edit, :update]
  end

  resources :bookings, only: [:index, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
