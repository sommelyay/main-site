#define SnoothApiHandler
class SnoothApiHandler
  	def initialize(request_type)  
	# Instance variables  
	# Request types include 'wines', 'create-account', 'rate', 'wishlist', 'stores', 'winery', 'action', 'my-wines'
		@apikey= 'K4j13GNS317751SV13SHUUEX2sgg7D2bs'
		@url = 'http://api.singleplatform.co/' + request_type + '/'  
  	end  

	def executeSnoothRequest(params_hash)
		#raise "Expecting a hash: #{params_hash.inspect}" unless params_hash.kind_of?(Hash) 
		#final_params_hash = params_hash.clone
		#final_params_hash['akey'] = @apikey
		response = RestClient.get 'http://api.singleplatform.co/', 
		{:params => final_params_hash}
		# puts "hello"
		return JSON.parse response

	end

end
