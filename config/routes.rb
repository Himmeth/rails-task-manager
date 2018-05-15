Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'tasks', to: 'tasks#index'
  get 'tasks/:id', to: 'tasks#show', as: 'task'

  get 'new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'

  get 'edit/:id', to: 'tasks#edit'
  patch 'tasks/:id', to: 'tasks#update'

  get 'tasks/destroy/:id', to: 'tasks#destroy'
end

# As a user, I can list tasks
# As a user, I can view the details of a task
# As a user, I can add a new task
# As a user, I can edit a task (mark as completed / update title & details)
# As a user, I can remove a task
