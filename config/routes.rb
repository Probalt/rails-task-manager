Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'tasks#index'

  # Create
  get 'tasks/new', to: 'tasks#new'
  post '/tasks', to: 'tasks#create'

  # Read
  get 'tasks/:id', to: 'tasks#show', as: :task

  # Update
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch '/tasks/:id', to: 'tasks#update'

  # Delete
  delete '/tasks/:id', to: 'tasks#destroy', as: :drop
end
