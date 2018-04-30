class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :product

  # def product
  #   product = Product.find(self.product_id)
  # end
end
