Rails.application.routes.draw do
  devise_for :users
  root 'messages#index'
  #messageというコントローラーのindexアクションを動かす。
  
  resources :users, only: [:edit, :update]
  #usersというコントローラーにedit,updataというアクションを設定。
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
