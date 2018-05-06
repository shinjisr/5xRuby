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
p [*1..100].reduce { |sum, n| sum + n}
# p [*1..100].map { |x| x.odd? }
array = [*1..100]
array.reduce { |sum, y|
  if y.odd?
    sum + y # here we facing some problem with 'undefined method' error
  end
}
# p x
######################################

# # 練習：改良版土砲 times 方法
# def my_times()
# end

# 5.my_times { |i| puts i }                 # 印出數字 0 ~ 4

# # 練習：土砲 select 方法
# def my_select()
# end

# [1, 2, 3, 4, 5].my_select { |i| i.odd? }  # 只印出單數 1, 3, 5
