



FirstApp::Application.routes.draw do

  root 'welcome#index'

  get '/about', to: 'welcome#about', as: :about
  

  resources :users do
    resources :bills
  end
end
