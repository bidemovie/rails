Rails.application.routes.draw do
  get 'tasks/new'
  get 'home/top'
  get  'tasks/:id'    => 'tasks#show'
  get  'tasks/:id/edit' => 'tasks#edit' 
  post 'tasks/create'  
  post 'tasks/:id/update' => 'tasks#update'
  post 'tasks/:id/delete' => 'tasks#delete'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
