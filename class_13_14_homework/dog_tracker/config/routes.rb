Rails.application.routes.draw do
  
  get "/dogs" => "dog_tracker#index"

  get "/dogs/new" => "dog_tracker#new"

  post "/dogs" => "dog_tracker#create"

  get "/dogs/:id" => "dog_tracker#show"

  get '/' => "dog_tracker#index"

end
