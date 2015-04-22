class ScramblesController < ApplicationController
  def new
    @new_scrambled_record = Scramble.find(rand(1..6))
    @new_scrambled_word=@new_scrambled_record.word_scrambled
  
  end

  def show
    
  





    end
 




end


