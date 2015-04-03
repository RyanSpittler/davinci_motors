Rails.application.routes.draw do
  root 'cars#index'

  resources :cars do
    member do
      get 'claim' => 'cars#claim'
      get 'unclaim' => 'cars#unclaim'
      # Add actions to perform to each car separately.
    end
    
    collection do
      # Add actions to perform to ALL the cars together.
    end
  end

  resources :users,
    only: [:create, :new],
    path_names: { new: 'signup'}

  get 'login' => 'sessions#login'
  post 'login' => 'sessions#create'

  delete 'logout' => 'sessions#destroy'
  
  get 'my_cars' => 'cars#my_cars'
end
