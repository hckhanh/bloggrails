Rails.application.routes.draw do
  root 'articles#index'

  resources :articles

  # resources :users, only: [:index, :show, :edit, :update, :new, :create, :destroy]

  controller :welcome do
    get 'instruction' => :instruction
  end

  controller :sessions do
    get 'login' => :new

    post 'login' => :create

    delete 'logout' => :destroy
  end

#   controller :users do
#     get 'sign_up' => :new
#
#     post 'sign_up' => :create
#   end
#
#   controller :password_reset do
#     get 'password_reset' => :new
#
#     post 'password_reset' => :create
#
#     get 'password_reset/:token' => :reset_edit, as: 'password_reset_edit'
#
#     put 'password_reset/:token' => :reset_update
#   end
end
