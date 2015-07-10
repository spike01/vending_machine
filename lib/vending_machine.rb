class VendingMachine

  def initialize
    @display = "INSERT COIN"
  end

  def message
    @display
  end

  def insert(coin)
    weights_to_values = {
      5 => 0.05,
      2.26 => 0.10,
      5.67 => 0.25
    }
    @display = "%.2f" % weights_to_values[coin.weight]
  end
end
