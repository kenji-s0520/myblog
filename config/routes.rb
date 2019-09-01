Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :blogs
  
  root 'blogs#index'          
  get '/new' => 'blogs#new'       # 投稿画面 
  post '/complete' => 'blogs#create'    # 投稿機能 
  post '/login' => 'blogs#login'      # ユーザー登録
  delete '/:id' => 'blogs#destroy'
  get '/:id/edit' => 'blogs#edit'
  patch '/id' => 'blogs#update'
end