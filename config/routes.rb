Rails.application.routes.draw do

  namespace :api do
  namespace :v1 do
    get 'posts/index'
    end
  end

  namespace :api do
  namespace :v1 do
    get 'posts/show'
    end
  end

  mount Faalis::Engine => '/'


  resources :posts, only: [:index, :show]

  api_routes do
    # Your API routes goes here.
  end

  namespace :api, format: :json do
    namespace :v1 do
      resources :posts, only: [:index, :show]
    end
  end

  in_dashboard do
    resources :posts
    # Your dashboard routes goes here.
  end

  root 'home#index'

end
