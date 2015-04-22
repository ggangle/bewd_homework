require "httparty"

url = "http://api.usatoday.com/open/bestsellers/books/ThisWeek?api_key=cph4tszt6x7jbb4eh9s7p69d"
book_response = HTTParty.get(url)
parsed = book_response.parsed_response

0.upto(19) do |i|
	title = parsed["BookLists"][0]["BookListEntries"][i]["Title"]

	author = parsed["BookLists"][0]["BookListEntries"][i]["Author"]

	description = parsed["BookLists"][0]["BookListEntries"][i]["BriefDescription"]
		if description == ""
			description = "No description."
		end
	

	info = "#{title} by #{author}\n'#{description}'"
		puts info
		puts "\n-----------------------------------------\n"
end