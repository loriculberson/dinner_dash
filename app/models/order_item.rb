class OrderItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :item
  validates :quantity, presence: true

  def item_subtotal
    if item
      (quantity * item.price) / 100.00
    else
      0
    end
  end
end
