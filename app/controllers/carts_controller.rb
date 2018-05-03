class CartsController < ApplicationController

  def show
    sleep 1
    @order_items = current_order.order_items
  end

  def destroy
    @order_items = current_order.order_items
    @order_items.destroy
    redirect_to products_path
  end
end
