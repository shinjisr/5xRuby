puts "練習 1：請印出從 1 到 100 之間所有的單數。"
puts " # Ans. 1.1"
(1..100).each do |i|
  p i if i.odd?
end
p "======================================"

puts " # Ans. 1.2"
p [*1..100].select { |i| i.odd? }
p "======================================"

puts '練習 2：請印出從 1 到 100 之間所有的單數的總和。 # 2500'
puts " # Ans. 2.1 "
a = [*1..100].select { |i| i.odd? }
p a.reduce { |sum, n| sum + n }
p "======================================"

puts " # Ans. 2.2 Tried to insert if-statement into block."
# this line works too!
# the block will return 'nil' when if-statement is false, so make it pass back sum then
p [*1..100].reduce { |sum, n| n.odd? ? sum + n : sum }
p "======================================"
puts " # Ans. 2.3 in class"
p a = [*1..100].select { |i| i.odd? }.sum
p "======================================"
#########################################
# Wait to figure out why block below doesn't work?
# p [*1..100].reduce { |sum, n|
#   if n.odd?
#     sum + n # here we facing some problem with 'undefined method' error
#   elsif
#     sum
#   end
# }
#########################################
# 參考用：自己土炮的 .map 方法"
# class Array
#   def my_map
#     a =[]
#     self.each do |i|
#       a << yield(i)
#     end
#     return a
#   end
# end
# p [1, 2, 3, 4, 5].my_map { |x| x * 2 } # => [2, 4, 6, 8, 10]
# p "======================================"

puts "練習 3：改良版土砲 times 方法 # 印出數字 0 ~ 4"
class Integer
  def my_times()
    i = 0
    until i >= self
      yield(i)
      i += 1
      next
    end
  end
end

5.my_times { |i| puts i }                 # 印出數字 0 ~ 4
p "======================================"

puts "3.2 in class answer"
class Integer
  def my_times()
    i = 0
    while i < self
      yield(i)
      i += 1
    end
  end
end

5.my_times { |i| puts i }                 # 印出數字 0 ~ 4
p "======================================"

puts "練習 4：土砲 select 方法 # 只印出單數 1, 3, 5"

class Array
  def my_select()
    array_selected = []
    self.each do |a|
      if yield(a)
        array_selected << a
      end
    end
    p array_selected
  end
end
[1, 2, 3, 4, 5].my_select { |i| i.odd? }  # 只印出單數 1, 3, 5
p "======================================"

puts "4.2 in class answer"

class Array
  def my_select()
    array_selected = []
    self.each do |num|
      if yield(num)
        array_selected << num
      end
    end
    array_selected
  end
end
p [1, 2, 3, 4, 5].my_select { |i| i.odd? }  # 只印出單數 1, 3, 5
p "======================================"
