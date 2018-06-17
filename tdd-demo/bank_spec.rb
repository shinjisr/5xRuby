class Bank
  def initialize(balance)
    @balance = balance
  end

  def deposit(amount)
    @balance = @balance + amount
  end

  def balance
    @balance
  end

end

RSpec.describe Bank do
  # AAA = arrange act assert
  it "存錢功能" do
    b = Bank.new(10)
    b.deposit 20
    expect(b.balance).to be 30
  end

end
