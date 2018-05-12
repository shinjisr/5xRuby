# class Animal
#   def eat!
#     puts "yammy!"
#   end
# end

# class Cat < Animal
#   # attr_reader :ahn
#   # attr_writer :ahn
#   attr_accessor :ahn

#   def initialize(something)
#     @ahn = something
#     # puts "hi #{something}"
#   end

#   # 定義 類別方法
#   def self.all
#     puts "all cats!"
#   end
#   # 定義實例方法
#   def hello
#     puts "hi"
#     # 取用私密方法，前面不能加小數點
#     gossip
#   end
#   # 定義私密方法 => 不能指出 message 的 receiver
#   # 只能在類別內呼叫(內部功能，例如：遙控器的電路板)
#   private
#   def gossip
#     puts "..."
#   end
# end

# c = Cat.new("紅豆")
# d = Cat.new("綠豆")

# c.eat!
# Cat.all
# c.hello
# c.send(:gossip)
# module Flyable
#   def fly
#     puts "I believe I can fly."
#   end
# end

# class Cat
#   include Flyable
# end
module Active
  class Cat
  end
end

c = Active::Cat.new
# c = Cat.new
p c.class
p c.methods.sort