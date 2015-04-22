class MuseumsController < ApplicationController
  

   def index
      @museums = Museum.all 
   end 

  

  def show
  	@museum = Museum.find(params[:id])
  end

  def create
  	@museum = Museum.new(museum_params)
		
	   if @museum.save
	       redirect_to @museum  
	   else
	   	render 'new'
	   end
  end


   def new
	 @museum = Museum.new
	 end	
  

  
	  private
	  def museum_params
		params.require(:museum).permit(:museum_name)
	  end	
		
end

