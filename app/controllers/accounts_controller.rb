class AccountsController < ApplicationController
  def show
    @orders = Order.all
  end
end
