Rails.application.routes.draw do
  get 'images/index'
  get 'images/new'
  get 'images/create'
  get 'images/destroy'
  get 'categories/new'
  get 'categories/edit'
  get 'categories/create'
  get 'categories/update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
