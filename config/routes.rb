Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  post "users/login", to: "users#login"
  get "users/auto_login", to: "users#auto_login"

  get "users/new", to: "users#new", as: :new_user
  get "users/:id/edit", to: "users#edit", as: :edit_user

  get "users/:id/jobs/new", to: "jobs#new", as: :new_job
  get "users/:id/jobs/:id/edit", to: "jobs#edit", as: :edit_job

  resources :users do 
    resources :jobs
  end

  get "jobs", to: "jobs#all"
  get "jobs/:id", to: "jobs#one"
 


end
