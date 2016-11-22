Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# read all
  get    "articles",          to: "articles#index"

  #create new task
  get    "articles/new",      to: "articles#new"

  # find a task
  get    "articles/:id",      to: "articles#show", as: "article"


  post   "articles",          to: "articles#create"

  #edit a new task
  get    "articles/:id/edit", to: "articles#edit", as: "editarticle"

  patch  "articles/:id",      to: "articles#update"

  #delete a task
  delete "articles/:id",      to: "articles#destroy"

end
