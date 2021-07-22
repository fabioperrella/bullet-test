Rails.application.routes.draw do
  resources :comments
  resources :posts do
    collection do
      get :basic_index
      get :index_with_counter
    end
  end

  root 'posts#index'
end
