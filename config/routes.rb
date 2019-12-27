require 'sidekiq/web'
require 'sidekiq/cron/web'
Sidekiq::Web.set :sessions, false


Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount Sidekiq::Web => 'sidekiq'

  get "/" => "main#root", as: :root
  match "abc" => "main#root", via: [ :delete, :put, :get, :patch ]
end
