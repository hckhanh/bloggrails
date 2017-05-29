Rails.application.routes.draw do
  root 'welcome#index'

  resources :articles

  resources :users, only: [:index, :show, :edit, :update, :new, :create, :destroy]

  controller :sessions do
    get 'login' => :new

    post 'login' => :create

    delete 'logout' => :destroy
  end

  controller :users do
    get 'reset' => :reset

    put 'reset' => :reset_update

    get 'sign_up' => :new

    post 'sign_up' => :create
  end
end
