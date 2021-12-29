Rails.application.routes.draw do
  get 'comments/new'
  get 'comments/create'
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

  get '/posts/:id/comments/new', to: 'comments#new', as: 'new_comment'
  get '/posts/:id/comments', to: 'comments#index', as: 'comments'
  get '/posts/:id/comments/:id', to: 'comments#show', as: 'comment'
  post '/posts/:id/comments', to: 'comments#create'
  get '/posts/:id/comments/:id/edit', to: 'comments#edit', as: 'edit_comment'
  patch '/posts/:id/comments/:id', to: 'comments#update'
  delete 'posts/:id/comments/:id', to: 'comments#destroy'


end
