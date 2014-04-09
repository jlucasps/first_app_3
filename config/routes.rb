
FirstApp::Application.routes.draw do

  devise_for :users, path_prefix: 'auth'

  root 'welcome#index'

  get '/about', to: 'welcome#about', as: :about
  
  resources :users do
    resources :bills
  end
end
