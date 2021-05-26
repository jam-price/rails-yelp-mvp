Rails.application.routes.draw do
  # /restaurant
  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end

end
