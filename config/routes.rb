Rails.application.routes.draw do
  get 'home/index'
  get 'p_tasks/index'
  get 'p_tasks/create'
  get 'p_tasks/edit'
  get 'p_tasks/destroy'
  get 'p_corps/index'
  get 'p_corps/create'
  get 'p_corps/edit'
  get 'p_corps/destroy'
  get 'p_users/show'
  get 'p_users/create'
  get 'p_users/edit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
