class OrdersController < ApplicationController

  def show
    @order_items = current_order.order_items
  end

  def destroy
    current_order.destroy
  end 
end
