require 'pp'

# 入力値を数値で返却する
def gets_i()
  gets.chomp.to_i
end

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end

N = gets_i
a_list = gets_i_list

count = 0
type = 0

a_list.each_with_index do |a, i|
  next_a = a_list[i+1]
  break if next_a.nil?
  case type
  when 0
    type = next_a <=> a
  when -1
    # 減少
    if next_a <= a
      next
    else
      count += 1
      type = 0
    end
  when 1
    # 増加
    if next_a >= a
      next
    else
      count += 1
      type = 0
    end
  end
end

puts count + 1
