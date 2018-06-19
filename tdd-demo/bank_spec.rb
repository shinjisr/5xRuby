require "./bank" # 導入要測試的檔案
# AAA = arrange act assert
RSpec.describe Bank do
  let(:bank) { Bank.new(10)} # 取代以下的重複設定: bank = Bank.new(10)
  context "存錢" do # 透過 context block 將相關的測試打包在一起
    it "存錢功能" do
      # bank = Bank.new(10)
      bank.deposit 20
      expect(bank.balance).to be 30 # 原型 = .to(be(30))
    end

    it "不能存負的錢" do
      # bank = Bank.new(10)
      bank.deposit(-20)
      expect(bank.balance).to be 10
    end
  end

  context "領錢" do
    it "領錢功能" do
      # bank = Bank.new(10)
      bank.withdraw(5)
      expect(bank.balance).to be 5
    end

    it "不能領負的金額" do
      # bank = Bank.new(10)
      bank.withdraw(-10)
      expect(bank.balance).to be 10
    end

    it "不能領超過本身餘額" do
      # bank = Bank.new(10)
      bank.withdraw(15)
      expect(bank.balance).to be 10
    end
  end
end
