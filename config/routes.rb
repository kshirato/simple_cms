Rails.application.routes.draw do
  resources :subjects do
    member do
      get :delete
    end
  end

  resources :demo

  root 'demo#index'
end
