#define SPApiHandler
require 'rest_client'

class SPApiHandler
  	def initialize(request_type)  
	# Instance variables  
	# Request types include 'wines', 'create-account', 'rate', 'wishlist', 'stores', 'winery', 'action', 'my-wines'
		@apikey= 'K4j13GNS317751SV13SHUUEX2sgg7D2bs'
		@url = 'http://api.singleplatform.co/' + request_type
  	end  

	def executeSPRequest(params_hash)
		#raise "Expecting a hash: #{params_hash.inspect}" unless params_hash.kind_of?(Hash) 
		#final_params_hash = params_hash.clone
		#final_params_hash['akey'] = @apikey
		puts "#{@url}"
		final_params_hash = {'q' => 'Haru', 'page' => 3, 'count' => 100}
		response = RestClient.get "#{@url}", {:params => final_params_hash}
		# puts "hello"
		return JSON.parse response

	end

end

Single_Platform = SPApiHandler.new('locations/search')

response = Single_Platform.executeSPRequest("")
puts response