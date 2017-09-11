require 'securerandom'
require 'openssl'
class IndexController < ApplicationController
  
  def home
    @newpaste = Paste.new
  end

  def new
    @paste = Paste.new(paste_params)
    @paste.hash_number= SecureRandom.hex (6)
    
    @paste.save
    redirect_to "/p/"+ @paste.hash_number

  end

  def show
    
    @paste = Paste.find_by hash_number: params[:id]
    
  end


  private

  def paste_params
    params.require(:paste).permit(:title, :content , :pass_checker , :pass_key)
  end

end
