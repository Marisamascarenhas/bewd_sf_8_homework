class MoviesController < ApplicationController
  
  def index

     if params[:q] then
      #@movies=Movie.where(title:params[:q])
      @movies = Movie.search(params[:q])
  	  else
      @movies = Movie.all 
    end
     #@movies=Movie.search(params[:q])
  end
  
  def new
  @movie = Movie.new
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def create 
    @movie=Movie.new(movie_params)

      if @movie.save
         redirect_to @movie 
       else
        render 'new'
      end
  end

    
    def show
      @movies = Movie.find(params[:id])
    end
  
  
def update
    @movie=Movie.find(params[:id])

      if @movie.update (movie_params)
         redirect_to @movie 
       else
        render 'edit'
      end
  end

  

  private
    # Use callbacks to share common setup or constraints between actions.


    # Never trust parameters from the scary internet, only allow the white list through.
    def movie_params
      params.require(:movie).permit(:title, :description, :year_released, :rating)
    end
end

    
