class DevelopmentOrdersController < ApplicationController
  
  def index
    @development_orders = DevelopmentOrder.includes(:client).order(:id)
  end

  def show
    @development_order = DevelopmentOrder.find(params[:id])
  end

  def new
    @development_order = DevelopmentOrder.new
  end

  def create
    @development_order = DevelopmentOrder.new(development_order_params)
    
    if @development_order.save
      redirect_to @development_order
    else
      render :new
    end
  end

  def edit
  end

  private
  def development_order_params
    params.require(:development_order).permit!
  end
end
