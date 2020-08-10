require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end

a, b, c, x, y = gets_i_list

ts = []

0.upto([x,y].max) do |i|
  total = c * i * 2
  rx = x - i
  ry = y - i
  if rx > 0
    total += a * rx
  end

  if ry > 0
    total += b * ry
  end
  ts.push total
end

puts ts.min
