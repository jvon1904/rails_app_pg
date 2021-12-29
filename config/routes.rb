Rails.application.routes.draw do
  resources :posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  # get '/pages', to: 'pages#index', as: 'pages'
  # post '/pages', to: 'pages#create'
  # get '/pages/new', to: 'pages#new', as: 'new_page'
  # get '/pages/:id', to: 'pages#show', as: 'page'
  # get '/pages/:id/edit', to: "pages#edit", as: 'edit_page'
  # patch '/pages/:id', to: "pages#update", as: 'update'
  # delete '/pages/:id', to: "pages#destroy"
  resources :pages

end
