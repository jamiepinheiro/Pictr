class PicsController < ApplicationController
  def index
  	@pics = Pic.all
  end
  def show 
  	@pic = Pic.find(params[:id])
  end

  def new
    @pic = Pic.new
  end

  def destroy
    @pic = Pic.find(params[:id])
    @pic.destroy
    redirect_to '/pics'
  end
  
  def create
    @pic = Pic.new(pic_params)
    if @pic.save
      redirect_to '/pics'
    else
      render 'new'
    end
  end
  
  private
  def pic_params
    params.require(:pic).permit(:title, :image)
  end

end
