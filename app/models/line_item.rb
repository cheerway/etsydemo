class LineItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :cart
  belongs_to :listing
  validate :check_stock
  before_save :set_unit_price

  def subtotal
  	unit_price * quantity
  end

  def check_stock
  	errors.add(:quantity, 'out of stock') if quantity > listing.stock
  end

  def set_unit_price
  	self.unit_price = listing.price 
  end

end
class LineItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :cart
  belongs_to :listing
  validate :check_stock
  before_save :set_unit_price

  def subtotal
    unit_price * quantity
  end

  def check_stock
    errors.add(:quantity, 'out of stock') if quantity > listing.stock
  end

  def set_unit_price
    self.unit_price = listing.price 
  end
end
