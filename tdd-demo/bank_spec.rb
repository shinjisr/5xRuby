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
    if (amount > 0) && (amount < @balance)
      @balance = @balance - amount
    end
  end

  # 可以用 attr_reader :balance 縮寫
  # def balance
  #   @balance
  # end
end

RSpec.describe Bank do
  # AAA = arrange act assert
  it "存錢功能" do
    b = Bank.new(10)
    b.deposit 20
    expect(b.balance).to be 30 # 原型 = .to(be(30))
  end

  it "不能存負的錢" do
    b = Bank.new(10)
    b.deposit(-20)
    expect(b.balance).to be 10
  end

  it "領錢功能" do
    b = Bank.new(10)
    b.withdraw(5)
    expect(b.balance).to be 5
  end

  it "不能領負的金額" do
    b = Bank.new(10)
    b.withdraw(-10)
    expect(b.balance).to be 10
  end

  it "不能領超過本身餘額" do
    b = Bank.new(10)
    b.withdraw(15)
    expect(b.balance).to be 10
  end

end
