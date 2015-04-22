require "sinatra"
require "httparty"

shorts = "Today is a shorts day."
pants = "Today is a pants day."

get "/" do
	@zipcode = params["zipcode"]
	erb :home_form
end

post "/code" do
	@result = params["zipcode_string"]

url = "http://api.zippopotam.us/us/#{@result}" 
zippopotam_response = HTTParty.get(url)
parsed = zippopotam_response.parsed_response

@long = parsed["places"][0]["longitude"]
@lat = parsed["places"][0]["latitude"]

url = "https://api.forecast.io/forecast/52b257299ff66e4d1e170ef6f9b3df67/34.1005,-118.3254"
forecast_response = HTTParty.get(url)
parsed = forecast_response.parsed_response

@current_temp = parsed["currently"]["temperature"]

@low_temp = parsed["daily"]["data"][0]["temperatureMin"]
@high_temp = parsed["daily"]["data"][0]["temperatureMax"]

if @high_temp >= 74
	@pants = shorts
else
	@pants = pants
end

erb :code
end