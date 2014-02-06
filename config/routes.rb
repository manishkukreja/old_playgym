Playgym::Application.routes.draw do
  resources :events  do 
    resources  :comments
  end
    
  resources :programs do 
    resources :comments
  end

  devise_for :users do
  	match "users/sign_out" => 'devise/sessions#destroy'
  end	

  namespace :parent do
    resources :child do
      collection do
        get :index
      end
    end    
  end
  

  resources :home
  resources :users
  resources :comments do
    collection do
      get 'all_comments'
    end
  end

  root :to => 'home#index'
  match "/auth/:provider/callback" => "sessions#create"
end
  
