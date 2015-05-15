Rails.application.routes.draw do
  
  get "/cars" => "garageio#index"

  get "/cars/show" => "garageio#show"

  get "/cars/new" => "garageio#new"

  post "/cars" => "garageio#create"

end
