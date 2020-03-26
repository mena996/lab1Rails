Rails.application.routes.draw do
  get 'comments/new(/:id)', to: 'comments#new', as: :new_comment
  get '(/:id)/comments', to: 'comments#index', as: :comments
  get '/comment/(/:id)/edit', to: 'comments#edit', as: :edit_comment
  delete '/:id/comment', to: 'comments#destroy', as: :delete_comment
  post '(/:id)/comment', to: 'comments#create', as: :comment
  patch '/comment/:id', controller: 'comments', action: :update ,as: :update_comment

  resources :posts
  root to: 'posts#index'

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
