class RecommendationController < ApplicationController

	def get_recommendation
	#putting links on the home page

	end

	def make_answer
	#logic operating the links on the homepage
		mellow_response = HTTParty.get("https://api.spotify.com/v1/artists/1rKrEdI6GKirxWHxIUPYms").parsed_response

			mellow_artist = mellow_response["name"]
			mellow_popularity = mellow_response["popularity"]

			mellow = "#{mellow_artist}, popularity: #{mellow_popularity}"

		energetic_response = HTTParty.get("https://api.spotify.com/v1/artists/6TmGNPW2oDM5uaXBILozGa").parsed_response

			energetic_artist = energetic_response["name"]
			energetic_popularity = energetic_response["popularity"]

			energetic = "#{energetic_artist}, popularity: #{energetic_popularity}"

		headache_response = HTTParty.get("https://api.spotify.com/v1/artists/6wPhSqRtPu1UhRCDX5yaDJ").parsed_response

			headache_artist = headache_response["name"]
			headache_popularity = headache_response["popularity"]

			headache = "#{headache_artist}, popularity: #{headache_popularity}"

	#response to the links
		selection = params[:mood]
		if selection == "mellow"
			@resp_string = mellow
			@video = "https://www.youtube.com/watch?v=vjncyiuwwXQ"
		elsif selection == "energetic"
			@resp_string = energetic
			@video = "https://www.youtube.com/watch?v=fu2bgwcv43o"
		else
			@resp_string = headache
			@video = "https://www.youtube.com/watch?v=VCLxJd1d84s"
		end
	end

end