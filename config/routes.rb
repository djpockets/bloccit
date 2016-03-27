Rails.application.routes.draw do

  resources :topics do
    resources :posts, except: [:index]
    resources :sponsored_posts, except: [:index, :update, :destroy, :create]
  end


  get 'about' => 'welcome#about'

  root 'welcome#index'

  end
