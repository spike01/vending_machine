class VendingMachine

  def initialize
    @display = "INSERT COIN"
  end

  def message
    @display
  end

  def insert(coin)
    @display = "0.05"
  end
end
