class PaintingsController < ApplicationController
  
  def index

     if params[:q] then
      @paintings = Painting.search(params[:q])
  	  else
      @paintings = Painting.all 
     end	
  	
    end 

  

  def show
  	@painting = Painting.find(params[:id])
  end


  def create
  	@painting=Painting.new(painting_params)
		
	   if @painting.save
	     redirect_to @painting  
	   else
	   	render 'new'
	   end
  end


   def new
	 @painting = Painting.new
	 end	
  

    def edit
    @painting = Painting.find(params[:id])
    end
      



    def update 
		@painting=Painting.find(params[:id])
		
	    if @painting.update (painting_params)
	       redirect_to @painting  
	   else
	   	render 'edit'
	   end

	end

  
	  private
	  def painting_params
		params.require(:painting).permit(:title, :photo_url)
	  end	
		
end


