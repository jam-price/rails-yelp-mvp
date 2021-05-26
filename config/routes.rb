Rails.application.routes.draw do
  # /restaurant
  resources :restaurants do
    resources :reviews, only: [:show, :new]
  end

end
