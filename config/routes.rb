Rails.application.routes.draw do
    root 'static_pages#home'
    get  '/scan',     to: 'static_pages#scan'
    get  '/search',   to: 'static_pages#search'
    get  '/list',     to: 'static_pages#list'
    get  '/signup',   to: 'users#new'
    post 'signup',    to: 'users#create'
    

    resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
