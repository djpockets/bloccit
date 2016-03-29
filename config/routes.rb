Rails.application.routes.draw do

  resources :topics do
    resources :posts, except: [:index]
    resources :sponsored_posts, only: [:new, :edit, :show]
  end


  get 'about' => 'welcome#about'

  root 'welcome#index'

  end
