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
  
  NO_CREDIT_MESSAGE = "INSERT COIN"

  attr_reader :coin_return

  def initialize
    @credit = 0
    @coin_return = []
  end

  def message
    formatted_credit
  end

  def insert(coin)
    @coin_return << coin if value(coin) == 0
    @credit += value(coin)
  end

  private

  attr_reader :credit

  def value(coin)
    COIN_VALUES.fetch(COIN_WEIGHTS[coin.weight], 0)
  end

  def formatted_credit
    return NO_CREDIT_MESSAGE if credit == 0
    "%.2f" % credit
  end
end
