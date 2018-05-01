class Order < ApplicationRecord
  # belongs_to :account
  has_many :order_items
  before_save :update_total
  before_create :update_status

  def calculate_total
    self.order_items.collect { |item| item.product.price * item.quantity }.sum
  end

  def total_items
    self.order_items.collect { |item| item.quantity }.sum
  end

  private

  def update_status
    if self.status == nil?
      self.status = "In progress"
    end
  end

  def update_total
    self.totalPrice = calculate_total
  end
end
