class LocationsController < ApplicationController
  
  def index
  	@locations=current_user.locations
  end

  def show

  	@location=Location.find(params[:id])
  
  	x= @location.longitude
  	y= @location.latitude

    @bird_display_array = []
    # get list of birds seen from e bird 
  	@titles = JSON.load(RestClient.get("http://ebird.org/ws1.1/data/obs/geo/recent?lng=#{x.round(2)}&lat=#{y.round(2)}&dist=10&back=7&maxResults=500&locale=en_US&fmt=json"))
    
    # get photo from flickr for each bird seen in e-bird 
    @titles.each do |title|

       @bird_name = title["sciName"]
       @bird_name_common = title ["comName"]
       @birds = RestClient.get("https://api.flickr.com/services/rest/?method=flickr.photos.search&format=json&text=#{@bird_name}&per_page=1&page=1&pages=1&api_key=455e52faa1d5446b29f248aaf8af4558")
       #code to make Json parseable from Flickr
       @birds.slice!(0,14)
       @birds.slice!(-1)

       @bird_json=JSON.load(@birds)

       @bird_json['photos']['photo'].each do |child|
       @bird_photo_id = child ['id']
       @bird_server_id = child ['server']
       @bird_farm_id = child ['farm']
       @bird_secret= child['secret']

      end
        
       #code to get the photo url
       #if @bird_json['photos']['photo']= [] then @bird_photo_final = " " 
       #else
       @bird_photo_final = "https://farm#{@bird_farm_id}" + ".staticflickr.com/#{@bird_server_id}/#{@bird_photo_id}_#{@bird_secret}_m.jpg" 
       #@bird_photo_final = "https://farm#{@bird_json['photos']['photo'].first['farm']}" + ".staticflickr.com/#{@bird_json['photos']['photo'].first['server']}/#{}_#{@bird_json['photos']['photo'].first['secret']}_m.jpg" 
       @bird_hash = {:bird_name_end =>@bird_name_common,:bird_photo_final_end=>@bird_photo_final}
       # prepare array to send to show view 
       @bird_display_array.push(@bird_hash)

      end

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
    
   
  def destroy
  @location = Location.find(params[:id])
  @location.destroy
 
  redirect_to root_path
end 
   



  private
  def location_params
  	params.require(:location).permit(:location_name, :longitude, :latitude)
  end


end
