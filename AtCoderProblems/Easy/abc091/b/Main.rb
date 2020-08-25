require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 入力値を数値で返却する
def gets_i()
  gets.chomp.to_i
end
n = gets_i
slist = []
tlist = []

n.times do
  slist.push gets.chomp
end

m = gets_i
m.times do
  tlist.push gets.chomp
end

sh = slist.tally
th = tlist.tally

max = 0
sh.each do |k, v|
  max = [max, v - th[k].to_i].max
end

puts max