class OrdersController < ApplicationController
  before_action :authenticate_user!
  def index
    @orders=Order.all
  end
  def new
    @order = Order.new
  end
  def show
    @order=Order.find(params[:id])
    @line_products=@order.line_products.all
    render :show
  end
  def create
    @order=current_user.orders.create(order_params)
    @order.sum=@order.total_price

    @order.save

    if request.xhr?
      render json: { success: true }
    else
      redirect_to product_path(@product)
    end
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy
  end

  private

  def set_order
    @order = Order.find(params[:id])
  end

  def order_params
    params.require(:order).permit(:sum)
  end
end

