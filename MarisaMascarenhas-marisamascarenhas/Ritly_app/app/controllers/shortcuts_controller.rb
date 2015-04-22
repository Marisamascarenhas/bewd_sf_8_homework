class ShortcutsController < ApplicationController
  
 
 def new
 	@shortcut=Shortcut.new
 end

 def create 
    @shortcut=Shortcut.new(shortcut_params)
    @shortcut.hash_code = rand(10000).to_s
    @shortcut.save
    redirect_to @shortcut
    #render 'show'
 end
 

 def show
 	@shortcut=Shortcut.find(params[:id])
     @full_path = "#{request.protocol}#{request.host_with_port}/#{@url.hash_code}"
 end

def redirector
	@shortcut = Shortcut.find_by_hash_code: params[:code] 
	if @shortcut 
		redirect_to @shortcut.my_link
	else redirect_to root_path
	end
end	

def preview
	@shortcut=Shortcut.find_by hash_code:params[:code] 
	unless @shortcut
		redirect_to root_path
	end
end


def shortcut_params
      params.require(:shortcut).permit(:my_link, :hash_code)
    end


end
