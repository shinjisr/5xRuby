# 180617 This file is made for practice TDD,
# see 'bank_spec.rb'
class Bank
  attr_reader :balance

  def initialize(balance)
    @balance = balance
  end

  def deposit(amount)
    if amount > 0
      @balance = @balance + amount
    end
  end

  def withdraw(amount)
    if can_withdraw?(amount)
      @balance = @balance - amount
    end
  end

  # 如果要存取餘額可以用 attr_reader :balance 縮寫
  # def balance
  #   @balance
  # end
  private
  def enough?(amount)
    amount <= @balance
  end

  def can_withdraw?(amount)
    amount > 0 && enough?(amount)
  end
end
