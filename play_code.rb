class Animal
  def self.my_attr_accessor(var)
    define_method("#{var}=") do |x|
      @var = x
    end

    define_method(var) do
      return @var
    end
  end
end

class Cat < Animal
  my_attr_accessor :name
end

c = Cat.new
c.name = "abc"
p c.name
