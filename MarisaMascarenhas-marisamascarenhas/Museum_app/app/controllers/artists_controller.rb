class ArtistsController < ApplicationController
  
  def index
   @artists = Artist.all 	
  end

  def new
  	@artist = Artist.new
  end

  def create
  	@artist=Artist.new(artist_params)
		
	   if @artist.save
	       redirect_to @artist  
	   else
	   	render 'new'
	   end
  end

  def show
  end
end
