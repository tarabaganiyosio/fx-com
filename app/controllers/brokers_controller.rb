class BrokersController < ApplicationController
  def show
    @broker = Broker.friendly.find(params[:id])
    #@broker = Broker.find(params[:id])
  end
  
  def new
    @broker = Broker.new
  end
  
  def create
    @broker = Broker.new(broker_params)
      if @broker.save
        redirect_to @broker
      else
        render 'new'
      end
  end
  
  def set_broker
    # @broker = Broker.find(params[:id])
    @broker = Broker.friendly.find(params[:id])
  end

  private

  def broker_params
    params.require(:broker).permit(:name, :location, :image, :image_cache, :remove_image, :license, :max_lev, :spread, :min_amo, :tr_fee)
  end
end
