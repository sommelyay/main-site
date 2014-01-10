# define class Wine  
class Wine  
  def initialize(name, code, region, winery, winery_id, varietal, price, vintage, type, link, tags, image, snoothrank, available, num_merchants, num_reviews)  
    # Instance variables  
    @name= name
	@code= code
	@region= region
	@winery= winery
	@winery_id= winery_id
	@varietal= varietal
	@price= price
	@vintage= vintage
	@type= type
	@link= link
	@tags= tags
	@image= image
	@snoothrank= snoothrank
	@available= available
	@num_merchants= num_merchants
	@num_reviews= num_reviews  
  end  
  
  def display  
    puts "Hello, my name is #{@name} and I cost $#{@price}."  
  end  

  def full_display
  	puts "#{@name}, #{@code}, #{@region}, #{@winery}, #{@winery_id}, #{@varietal}, #{@price}, #{@vintage}, 
  		#{@type}, #{@link}, #{@tags}, #{@image}, #{@snoothrank}, #{@available}, #{@num_merchants}, #{@num_reviews}"
  end

end 