Rails.application.routes.draw do
  get 'comments/new'
  get 'comments/create'
  root 'welcome#index'
  resources :posts do
      resources :comments
  end
  resources :pages
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get '/posts/:post_id/comments/:id/form', to:'comments#form', as: 'form'
  get '/form.js', to: 'comments#form', as: 'form'
end