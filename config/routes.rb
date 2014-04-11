
FirstApp::Application.routes.draw do

  devise_for :users, path_prefix: 'auth'

  root 'welcome#index'

  get '/about', to: 'welcome#about', as: :about

  resources :users do
    resources :bills
  end

  resources :comments

  get '/new_bill', to: 'bills#new_bill', as: :new_bill
  post '/create_bill', to: 'bills#create_bill', as: :create_bill

end
