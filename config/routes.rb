Rails.application.routes.draw do
  resources :posts do
    get :upload_from_nyt, on: :collection
  end
end
