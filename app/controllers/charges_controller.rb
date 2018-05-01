class ChargesController < ApplicationController
  def new
    @order = current_order
    @order_items = @order.order_items
  end

  def create
    # Amount in cents
    @amount = (current_order.totalPrice * 100).round

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => 'Rails Stripe customer',
      :currency    => 'usd'
    )

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end

  def destroy
    current_order.destroy
    redirect_to products_path
  end
end
