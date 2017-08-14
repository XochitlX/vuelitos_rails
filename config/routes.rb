Rails.application.routes.draw do
  root 'tickets#index'
  post 'tickets/:id/bookings', to: 'tickets#booking', as:'booking'
  post 'tickets/:id/bookings/new', to: 'tickets#newbooking', as:'newbooking'
  post 'tickets/bookings/new/shopping', to: 'tickets#shopping', as:'shopping'
  get 'tickets/bookings/new/shopping', to: 'tickets#shopping', as:'shopping_new'
  post 'tickets/bookings/new/shopping/info', to: 'tickets#otro', as:'otro'
  post 'tickets/back', to: 'tickets#back', as:'back'

  post 'users/shopping/info', to: 'users#total_info', as:'total_info'
  post 'users/shopping/info/final', to:'users#final_info', as: 'final_info'
  post 'users/shopping/info/final/buy', to:'users#buy', as: 'buy'

  resources :tickets
  resources :users
  #post 'tickets/info', as:'info'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
