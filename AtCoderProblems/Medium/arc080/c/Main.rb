require 'pp'

# Nと空白区切の入力値を数値の配列で返却する
def gets_i_list()
  return gets.chomp.to_i, gets.chomp.split(" ").map(&:to_i)
end

N, a_list = gets_i_list

simple_a_list = a_list.map do |a|
  if a.odd?
    1
  elsif a % 4 == 0
    4
  else
    2
  end
end

c1 = simple_a_list.count(1)
c2 = simple_a_list.count(2)
c4 = simple_a_list.count(4)

if c1.zero?
  puts "Yes"
elsif c1.zero? && c4.zero?
  puts "Yes"
elsif c1 + (c2%2) -1 <= c4
  puts "Yes"
else
  puts "No"
end
