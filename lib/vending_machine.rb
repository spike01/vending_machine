class VendingMachine
  COIN_WEIGHTS = {
    5 => :nickel,
    2.26 => :dime,
    5.67 => :quarter
  }

  COIN_VALUES = {
    nickel: 0.05,
    dime: 0.10,
    quarter: 0.25
  }

  def initialize
    @display = "INSERT COIN"
  end

  def message
    @display
  end

  def insert(coin)
    return if value(coin).nil?
    @display = formatted_value(coin)
  end

  private

  def value(coin)
    COIN_VALUES[COIN_WEIGHTS[coin.weight]]
  end

  def formatted_value(coin)
    "%.2f" % value(coin)
  end
end
