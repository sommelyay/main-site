require 'rest_client'


response = RestClient.get 'http://api.snooth.com/wines/', 
	{:params => {"akey" =>'z3m0wyt8ysglkvu7wgbgxbzsfrp89lozzhaa1s1v4itzhely','q' => 'whiskey', 'xp' => 1000}}
puts response.to_str