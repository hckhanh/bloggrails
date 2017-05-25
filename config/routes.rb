Rails.application.routes.draw do

  root 'welcome#index'

  resources :articles

  resources :users, only: [:index, :show, :edit, :update, :new, :create, :destroy]

  controller :sessions do
    get 'login' => :new

    post 'login' => :create

    delete 'logout' => :destroy
  end

  get 'reset' => 'users#reset'

  put 'reset' => 'users#reset_update'
end
