require 'securerandom'
require 'openssl'
class IndexController < ApplicationController
  
  def home
    @newpaste = Paste.new
  end

  def new
    @paste = Paste.new(paste_params)
    @paste.hash_number= SecureRandom.hex (6)
    if @paste.title.blank?
      @paste.title= "Untitled"
    end
      @paste.save
    redirect_to "/p/"+ @paste.hash_number

  end

  def show
    
    @paste = Paste.find_by hash_number: params[:id]
    recently_viewed = cookies[:viewd_posts].to_s.split(':')
		if not recently_viewed.include?(@paste.hash_number.to_s)
			@paste.update_column(:views,  @paste.views+1 )
			recently_viewed << @paste.hash_number.to_s
		end
		cookies[:viewd_posts] = {
			value:    recently_viewed.join(':'),
			expires:  10.minutes.from_now
		}
  end


  private

  def paste_params
    params.require(:paste).permit(:title, :content )
  end

end
