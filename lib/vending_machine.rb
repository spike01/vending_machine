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
    @credit = 0
    @rejected_coins = []
  end

  def message
    formatted_value
  end

  def insert(coin)
    if value(coin).nil?
      @rejected_coins << coin
      return
    end
    @credit += value(coin)
  end

  def coin_return
    @rejected_coins
  end

  private

  def value(coin)
    COIN_VALUES[COIN_WEIGHTS[coin.weight]]
  end

  def formatted_value
    return "INSERT COIN" if @credit == 0
    "%.2f" % @credit
  end
end
