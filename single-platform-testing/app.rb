require 'rest_client'
require 'json'
#require './lib/wine'
require './lib/sp_api_handler'

response = Single_Platform.executeSPRequest("")
puts response


# #MAX_N = 100


# #puts "Total Wines to Pull: #{total_wines}."
# #puts "Total Requests: #{total_requests}."
# #puts "________________________________________________"

# #for i in 0..60000
# #cellar = Array.new

# 	request = {'q' => 'wine', 't' => 'wine', 'a' => 0, 'n' => MAX_N, 'mp' => i*price_increment, 'xp' => i*price_increment}
# 	object = Snooth_Handler.executeSnoothRequest(request)
# 	if object['wines'].nil?
# 		puts "Error: received 0 wines. Price increment from $#{i*price_increment} to #{(i+1)*price_increment}"
# 	else 
# 		puts "Received #{object['meta']['results']} wines. Price increment from $#{i*price_increment} to #{(i+1)*price_increment}"
# 		object['wines'].each do |wine_json|
# 			puts "'#{wine_json['name']}', '#{wine_json['code']}', '#{wine_json['region']}', '#{wine_json['winery']}', '#{wine_json['winery_id']}', '#{wine_json['varietal']}', '#{wine_json['price']}', '#{
# 				wine_json['vintage']}', '#{wine_json['type']}', '#{wine_json['link']}', '#{wine_json['tags']}', '#{wine_json['image']}', '#{wine_json['snoothrank']}', '#{wine_json['available']}', '#{wine_json['num_merchants']}', '#{
# 				wine_json['num_reviews']}"
# 		end
# 	end
# 	if object['meta']['results'] > MAX_N
# 		mini_requests = ((object['meta']['results'] -1) / MAX_N).ceil
# 			for j in 1..mini_requests
# 				request = {'q' => 'wine', 't' => 'wine', 'a' => 0, 'n' => MAX_N, 'mp' => i*price_increment, 'xp' => (i+1)*price_increment, 'f' => (j*MAX_N + 1)}

# 				object = Snooth_Handler.executeSnoothRequest(request)
# 				if object['wines'].nil?
# 					puts "Double Error: received 0 wines. Price increment from $'#{i*price_increment} to '#{(i+1)*price_increment}"
# 				else	
# 					object['wines'].each do |wine_json|
# 						puts "'#{wine_json['name']}', '#{wine_json['code']}', '#{wine_json['region']}', '#{wine_json['winery']}', '#{wine_json['winery_id']}', '#{wine_json['varietal']}', '#{wine_json['price']}', '#{
# 							wine_json['vintage']}', '#{wine_json['type']}', '#{wine_json['link']}', '#{wine_json['tags']}', '#{wine_json['image']}', '#{wine_json['snoothrank']}', '#{wine_json['available']}', '#{wine_json['num_merchants']}', '#{
# 							wine_json['num_reviews']}'"
# 					end
# 				end	
# 				sleep(0.1)
# 			end
# 	end
# 	sleep(0.1)
# end