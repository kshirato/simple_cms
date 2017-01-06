Rails.application.routes.draw do
  resources :subject do
    member do
      get :delete
    end
  end

  resources :demo

  root 'demo#index'
end
