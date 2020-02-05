class CashRegister

  attr_accessor :total, :discount, :items, :transactions

  def initialize(discount = 0)
    @total, @discount, @items = 0, discount, []
    @transactions = {}
  end

  def add_item(title, price, quantity = 1)
    @total += (price * quantity)
    quantity.times{ @items.push(title)}
    @transactions[title] ||= { "quantity" = quantity, price = price}
  end

  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    else
      @total = @total - @total * (discount/100.to_f)
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def void_last_transaction
    
  end
end
