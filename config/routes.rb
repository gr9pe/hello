Rails.application.routes.draw do
  get 'sessions/new'
  root 'home#index'

  get 'p_tasks/index'
  get 'p_tasks/new'
  post 'p_tasks/create'
  get 'p_tasks/:p_task_id', to: 'p_tasks#edit'
  patch 'p_tasks/:p_task_id', to: 'p_tasks#update'
  delete 'p_tasks/:p_task_id', to: 'p_tasks#destroy'

  get 'p_corps/index'
  get 'p_corps/new'
  post 'p_corps/create'
  get 'p_corps/:p_corp_id', to: 'p_corps#edit'
  patch 'p_corps/:p_corp_id', to: 'p_corps#update'
  delete 'p_corps/:p_corp_id', to: 'p_corps#destroy'


  get 'p_users/show'
  get 'p_users/new'
  post 'p_users/create'
  get 'p_users/edit'
  patch 'p_users/update'
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  get 'pdfs/show'
  get 'pdfs/create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
