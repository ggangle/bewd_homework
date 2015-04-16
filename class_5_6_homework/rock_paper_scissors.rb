require "sinatra"

player_objects = ["Rock", "Paper", "Scissors"]
comp_objects = ["Rock", "Paper", "Scissors"]

you_win = "You win!"
you_lose = "You lose!"
you_tied = "Tied!"

get "/" do
	@player_object = player_objects
	erb :player_roll	
end

get "/make_answer" do
	puts params.inspect
	answer = params[:object]
	if answer == "Rock"
		@comp_object = comp_objects.shuffle().first()
		if @comp_object == "Scissors"
			@resp_string = you_win
		elsif @comp_object == "Paper"
			@resp_string = you_lose 
		else 
			@resp_string = you_tied
		end
		erb :comp_roll
	elsif answer == "Paper"
		@comp_object = comp_objects.shuffle().first()
		if @comp_object == "Rock"
			@resp_string = you_win
		elsif @comp_object == "Scissors"
			@resp_string = you_lose 
		else 
			@resp_string = you_tied
		end
		erb :comp_roll
	else
		@comp_object = comp_objects.shuffle().first()
		if @comp_object == "Paper"
			@resp_string = you_win
		elsif @comp_object == "Rock"
			@resp_string = you_lose 
		else 
			@resp_string = you_tied
		end
		erb :comp_roll
	end
end

