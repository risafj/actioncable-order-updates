Rails.application.routes.draw do
  resources :orders

  mount ActionCable.server, at: '/cable'
end
