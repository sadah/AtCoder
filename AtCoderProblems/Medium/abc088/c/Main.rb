require 'pp'

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end

b = []
b.push(gets_i_list)
b.push(gets_i_list)
b.push(gets_i_list)

b.each_with_index do |row, i|
  b1,  b2,  b3  = row
  bb1, bb2, bb3 = b[i - 1]

  if b1-bb1 == b2-bb2 && b2-bb2 == b3-bb3 && b1-bb1 == b3-bb3
  else
    puts "No"
    exit
  end
end
puts "Yes"
