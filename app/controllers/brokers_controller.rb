class BrokersController < ApplicationController

  def show
    @broker = Broker.friendly.find(params[:id])
    @comments = @broker.comments.includes(:user).all
    @comment  = @broker.comments.build(user_id: current_user.id) if current_user
    
    #@broker = Broker.friendly.includes(:user).find(params[:id])
    #@comments = @broker.comments.includes(:user).all
    #@comment  = @broker.comments.build(user_id: current_user.id) if current_user
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
  
  def edit
    @broker = Broker.new
    @broker = Broker.friendly.find(params[:id])
  end
  
  def update
    @broker = Broker.new
    @broker = Broker.friendly.find(params[:id])
    if @broker.update_attributes(broker_params)
      redirect_to @broker
    else
      render 'edit'
    end
  end
  
  def index
    @brokers = Broker.all
  end
  
  def set_broker
    # @broker = Broker.find(params[:id])
    @broker = Broker.friendly.find(params[:id])
  end

  private

  def broker_params
    params.require(:broker).permit(:name, :location, :image, :image_cache, :remove_image, :license, :max_lev, :spread, :min_amo, :tr_fee, :capital, :lang, :cur, :order, :min_lot, :max_lot, :cur_pair, :p_met,
                        :b_pro, :state, :jp_sup, :p_ref, :p_fee, :w_fee, :m_fee, :demo, :multi, :sp_met, :tr_sys, :platform, :tr_pos, :gmt, :rollover, :ma_cal, :lo_cut, :both, :ea_lim, :ma_occ, :ca_trs, :st_met,
                        :mo_sup, :support, :design, :feeling, :payment )
  end
end
