class CashRegister

  attr_accessor :discount, :items, :cart

  def initialize(discount = 0)
    @discount, @items = discount, []
    @cart = {}
  end

  def total=
    tots = 0
    @cart.each{|item|
      tots += item["quantity"] * item["price"]
    }
    tots
  end
  def add_item(title, price, quantity = 1)
    #@total += (price * quantity)

    quantity.times{ @items.push(title)}
    @cart[title] ||= { "quantity" => 0, "price" => price}
    @cart[title]["quantity"] += quantity
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
    puts @cart
  end
end
