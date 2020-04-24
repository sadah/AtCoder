require 'pp'

# 入力値を文字列で返却する
def gets_s()
  gets.chomp
end
str = gets_s
s_list = str.chars
s_count_hash = s_list.group_by(&:itself).map{|k,v| [k, v.count] }.to_h

chars = ("a".."z").to_a
counts = chars.map do |char|
  count = 0
  duped_s_list = s_list.dup
  while duped_s_list.uniq.size != 1 do
    duped_s_list.pop
    duped_s_list.size.times do |i|
      duped_s_list[i] = char if duped_s_list[i+1] == char
    end
    count += 1
  end
  count
end
puts counts.min