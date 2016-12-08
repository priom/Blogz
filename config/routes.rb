Rails.application.routes.draw do
  # devise_for :users

  devise_for :users, :path => '', :path_names => {:sign_in => 'signin', :sign_out => 'signout', :sign_up => 'signup', :edit => 'edit'}

  resources :posts do
    resources :comments
  end

  root "posts#index"

  get '/about', to: 'pages#about'
end
