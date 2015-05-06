Rails.application.routes.draw do
  
  get "/" => "recommendation#get_recommendation"
#aiming to my home page
  get "/make_answer" => "recommendation#make_answer"
#aiming to my response page
end
