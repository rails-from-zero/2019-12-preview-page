Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "tickets#index"

  resources :tickets do
    post :preview, on: :collection

    resources :comments
  end
end
