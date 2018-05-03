class ProductsController < ApplicationController
  def index
    sleep 1
    @products = Product.all
    @order_item = current_order.order_items.new
  end

  def show
    @products = Product.all
    @product = Product.find(params[:id])
    respond_to do |format|
      format.html { redirect_to products_path }
      format.js
    end
  end
end
