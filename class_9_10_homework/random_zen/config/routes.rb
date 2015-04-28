Rails.application.routes.draw do

get "/" => "zen#random"

get "image" => "zen#image"

end
