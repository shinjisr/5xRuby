# 定義動態方法：
something = 123
define_method "hi#{something}" do |x|
  puts |x|
end
# 以上等於
def hi123(x)
  puts x
end



class Class
end
class Animal
  def self.my_attr_accessor(var)
    # def name
    #   return @name
    # end

    # 設定動態方法，傳入的值 = 方法名稱：
    # def var
    define_method(var.to_sym) do # 傳進來的希望是 symbol
      puts "hi #{var}"
    end

    def name=(new_value)
      @name = new_value
    end
  end

  def self.my_has_many(var) # 在這裡 var => :foods
    # def var=()
    define_method("#{var}=") do |value| # var => :foods, value => "123"
      puts "has many #{var} #{value}"
    end
  end

end

class Cat < Animal
  my_attr_accessor :name
  my_has_many :foods
end

c = Cat.new
c.name = "ss"
p c.name
c.foods = "123"