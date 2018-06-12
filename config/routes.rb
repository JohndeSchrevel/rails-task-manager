Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'tasks', to: 'tasks#index'
  get 'tasks/new', to: 'tasks#new'
  get 'tasks/new', to: 'tasks#new', as: :new_task
  post 'tasks', to: 'tasks#create'
  get 'tasks/:id', to: 'tasks#show', as: :task
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit
  patch 'tasks/:id', to: 'tasks#update'
  # match 'tasks/complete/:id', to: 'tasks#complete', as: 'complete_task', via: :put
  # match 'tasks/complete/:id', to: 'tasks#incomplete', as: 'incomplete_task', via: :delete
  delete 'tasks/:id', to: 'tasks#destroy'
end
