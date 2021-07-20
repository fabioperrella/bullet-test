Rails.application.routes.draw do
  resources :comments
  resources :posts do
    collection do
      get :basic_index
    end
  end

  root 'posts#index'
end
