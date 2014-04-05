



FirstApp::Application.routes.draw do

  resources :articles

  root 'welcome#index'

  get '/about', to: 'welcome#about', as: :about
  

  resources :users
end
