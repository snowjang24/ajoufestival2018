Rails.application.routes.draw do
  
#saved version
  resources :pubs do
    collection do
      get :list, :detail
    end
  end
  
  devise_for :users
  root 'home#index'
  
  get 'program/index'
  get 'program/school_event'
  get 'program/concert'
  
  get 'home' => 'home#index'
  get 'home/index' => 'home#index'
  get 'home/program/concert' => 'program#concert'
  
  
  resource :pubs do
    collection do
      get :search
    end
  end
  get 'pubs/search' => 'pubs#search'
  # get 'pubs/indexup/:format' => 'pubs#indexup'
  # get 'pubs/indexup/:id' => 'pubs#indexup'
  #post 'pubs/create', as: 'pub_create'
  #get  'pub/destroy/:pub_id' => 'pub#destroy', as: 'pub_destroy'
  #get  'pub/edit/:pub_id' => 'pub#edit'
  #patch 'pub/update/:pub_id' => 'pub#update', as: 'pub'
  
end

