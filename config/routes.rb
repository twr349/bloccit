Rails.application.routes.draw do
  
  
  resources :topics do
      resources :posts, except: [:index]
      resources :sponsored_posts, except: [:index] 
      
  end
  
  resources :users, only: [:new, :create]
  
  resources :sessions, only: [:new, :create, :destroy]
  
  resources :questions

  resources :advertisements

  post 'users/confirm' => 'users#confirm'
  
  get 'about' => 'welcome#about'
  
  get 'contact' => 'welcome#contact'
  
  get 'faq' => 'welcome#faq'

  root 'welcome#index'
end
