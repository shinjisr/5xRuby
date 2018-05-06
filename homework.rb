puts "練習 1：請印出從 1 到 100 之間所有的單數。"

# (1..100).each do |i|
# p i if i.odd?
# end
p [*1..100].select { |i| i.odd? }

######################################
puts '練習 2：請印出從 1 到 100 之間所有的單數的總和。'
puts " # 2.1 "
a = [*1..100].select { |i| i.odd? }
p a.reduce { |sum, n| sum + n }

######################################
puts " # 2.2 Tried to insert if-statement into block."
# this line works too!
# the block will return 'nil' when if-statement is false, so make it pass back sum
p [*1..100].reduce { |sum, n| n.odd? ? sum + n : sum }

# and block below doesn't work for some reason
# p [*1..100].reduce { |sum, n|
#   if n.odd?
#     sum + n # here we facing some problem with 'undefined method' error
#   elsif
#     sum
#   end
# }

######################################
p "參考：自己土炮的 .map 方法"

class Array
  def my_map
    a =[]
    self.each do |i|
      a << yield(i)
    end
    return a
  end
end
p [1, 2, 3, 4, 5].my_map { |x| x * 2 } # => [2, 4, 6, 8, 10]

######################################
puts "練習 3：改良版土砲 times 方法"
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

# class Integer
#   def my_times()
#     i = 0
#     if i <= self
#       yield(i)
#       i += 1
#     else
#       i
#     end
#   end
# end

5.my_times { |i| puts i }                 # 印出數字 0 ~ 4
5.times { |i| puts i }                    # (原版)印出數字 0 ~ 4

######################################
# # 練習：土砲 select 方法
# def my_select()
# end

# [1, 2, 3, 4, 5].my_select { |i| i.odd? }  # 只印出單數 1, 3, 5
