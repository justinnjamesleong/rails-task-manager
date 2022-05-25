Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # See all Tasks
  get "/tasks", to: "tasks#index"
  # Create a Task
  post "/tasks", to: "tasks#create"
  get "/tasks/new", to: "tasks#new", as: :new_task
    # Update a Task
  get "/tasks/:id/edit", to: "tasks#edit", as: :edit_task

  # See details about one Task
  get "/tasks/:id", to: "tasks#show", as: :task
  patch "/tasks/:id", to: "tasks#update"

  # Destroy a Task
  delete "/tasks/:id", to: "tasks#destroy"
end
