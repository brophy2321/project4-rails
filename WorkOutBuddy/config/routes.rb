Rails.application.routes.draw do
  resources :muscles do
    resources :exercises
  end

  root 'muscles#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
