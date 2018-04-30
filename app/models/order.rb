class Order < ApplicationRecord
  belongs_to :account
  has_many :order_items
end
