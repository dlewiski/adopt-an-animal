class ShirtsController < ApplicationController
  def index
    sleep 1
    @shirts = Shirt.all
  end

  def new
    @shirt = Shirt.new
  end

  def create
    @shirt = Shirt.new(item_params)
    @shirt.sold = false
    @shirt.save
    respond_to do |format|
      format.html{ redirect_to shirts_url }
      format.js
    end
  end

  def item_params
    params.require(:shirt).permit(:name, :sold)
  end
end
