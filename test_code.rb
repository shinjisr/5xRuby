class Animal
  def eat!
    puts "yammy!"
  end
end

class Cat < Animal
  # attr_reader :ahn
  # attr_writer :ahn
  attr_accessor :ahn

  def initialize(something)
    @ahn = something
    # puts "hi #{something}"
  end

  # def ahn
  #   return @ahn
  # end

  # def ahn=(new_value)
  #   @ahn = new_value
  # end
end

c = Cat.new("紅豆")
d = Cat.new("綠豆")

p c.ahn
p d

c.eat!