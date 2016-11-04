class MessagesController < ApplicationController
  before_action :set_product

  def create
   @message=@product.messages.create(message_params)
   @message.user_id=current_user.id
   @message.save
   flash[:notice] = "Thank you! This message will be added after moderation"

   if request.xhr?
     render json: { success: true }
   else
     redirect_to product_path(@product)
         end
  end

  def destroy
  end

  private

  def set_product
    @product = Product.find(params[:product_id])
  end

  def message_params
    params.require(:message).permit(:text, :status)
  end
end
