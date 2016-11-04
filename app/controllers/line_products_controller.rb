class LineProductsController < ApplicationController
  before_action :set_order
  def create
  @line_products=@order.line_products.create(line_product_params)
  @line_products.save
  if request.xhr?
    render json: { success: true }
  else
    redirect_to product_path(@product)
  end

  end
  def destroy
  @line_product = LineProduct.find(params[:id])
  @line_product.destroy
  redirect_to  product_path(@product)
  end
  def set_product
    @product= Product.find(params[:product_id])
  end
  def set_order
    @order= Order.find(params[:order_id])
  end

  def line_product_params
    params.require(:line_product).permit(:text, :status)
  end

end
