class CartsController < ApplicationController

  def show
    @order_items = current_order.order_items
  end

  def destroy
    @order_items = current_order.order_items
    @order_items.destroy
    redirect_to products_path
  end
end
