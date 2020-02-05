class CashRegister

  attr_accessor :total, :discount

  def initialize(discount = 0)
    @total, @discount = 0, discount
  end

  def add_item(title, price, quantity = 1)
    @total += (price * quantity)
  end

  def apply_discount
    @total = @total * discount
  end
end
