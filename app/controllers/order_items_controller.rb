class OrderItemsController < ApplicationController

  def create
    @order = current_order
    @item = @order.order_items.new(item_params)
    # binding.pry
    @order.check_duplicate(@item)
    @order.account_id = Account.find_by(user_id: current_user.id).id
    @order.save
    session[:order_id] = @order.id
    respond_to do |format|
      format.html { redirect_to products_path}
      format.js { render :file => "layouts/create.js.erb" }
    end
  end

  def destroy
    @order = current_order
    @item = @order.order_items.find(params[:id])
    @item.destroy
    @order.save
    # respond_to do |format|
    #   format.html { redirect_to cart_path }
    #   format.js
    # end
    # redirect_to cart_path
  end

  private

  def item_params
    params.require(:order_item).permit(:quantity, :product_id)
  end
end
