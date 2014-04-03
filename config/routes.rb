



FirstApp::Application.routes.draw do

  root 'welcome#index'

  get '/about', to: 'welcome#about', as: :about
  
end
