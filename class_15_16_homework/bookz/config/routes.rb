Rails.application.routes.draw do

get "/home" => "home#home"

resources :books
resources :authors


end
