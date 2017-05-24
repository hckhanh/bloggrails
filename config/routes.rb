Rails.application.routes.draw do

  root 'welcome#index'

  resources :articles do
    resources :comments
  end

  resources :users, only: [:edit, :update, :new, :create, :destroy]


  controller :sessions do
    get 'login' => :new

    post 'login' => :create

    delete 'logout' => :destroy
  end
end
