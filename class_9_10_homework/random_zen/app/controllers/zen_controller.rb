class ZenController < ApplicationController	

	def random
		@zen_text = HTTParty.get("https://api.github.com/zen").parsed_response
	end

end