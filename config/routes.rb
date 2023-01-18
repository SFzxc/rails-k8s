Rails.application.routes.draw do
  get 'healthz', to: 'healthz#index'
end
