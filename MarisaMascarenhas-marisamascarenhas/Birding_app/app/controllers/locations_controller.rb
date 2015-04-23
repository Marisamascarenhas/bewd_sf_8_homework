class LocationsController < ApplicationController
  
  def index
  	@locations=current_user.locations
  end

  def show

  	@location=Location.find(params[:id])
  
  	x= @location.longitude
  	
  	y= @location.latitude
  
  	@titles = JSON.load(RestClient.get("http://ebird.org/ws1.1/data/obs/geo/recent?lng=#{x.round(2)}&lat=#{y.round(2)}&dist=50&back=1&maxResults=500&locale=en_US&fmt=json"))
    
    
  end



  def new
  	@location=Location.new
  end

  def create
  	@location = Location.new(location_params)
    @location.user_id=current_user.id
		
	   if @location.save
	       redirect_to root_path 
	   else
	   	render 'new'
	   end
  end

  private
  def location_params
  	params.require(:location).permit(:location_name, :longitude, :latitude)
  end


end
