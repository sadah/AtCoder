# 入力値を文字の配列で返す
def gets_s_list()
  gets.chomp.split("")
end

s_list = gets_s_list

count = 0
w_count = 0
s_list.each_with_index do |s, i|
  if s == "W"
    count += i - w_count
    w_count += 1
  end
end
puts count
