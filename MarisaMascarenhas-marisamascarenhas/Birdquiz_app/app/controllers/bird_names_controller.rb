class BirdNamesController < ApplicationController
  
  def index
  	@bird_names = Bird_name.all
  	

  end

  def show

  end

  def create
  end

  def new
  end
end


   